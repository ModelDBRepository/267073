'''ARGS="model,,,stime etime,IC,Rxn"
## model is name of h5 file from which you are going to take initial conditions
## stime etime specify the timeframe from which to obtain molecule concentrations for IC
## IC is the name of the IC file to be updated
## Rxn file is the reaction file used for the simulation
###excec(open('UpdateIC_basal_spatial.py').read())
# from terminal window,
python3 UpdateIC_basal_spatial.py h5file '' ''  'stime etime' ICfile Rxnfile
do not include file extensions in the filenames
e.g.
python3 -i UpdateIC_basal_spatial.py Model_SPNspineAChm4R_Gshydr5_GapD-nostim '' '' "450 500" IC_SPNspine_noATP Rxn_SPNspine_noATP
'''
from lxml import etree
from xml.etree import ElementTree as ET
import os
import sys
import numpy as np
import h5py as h5
from NeuroRDanal import h5utilsV2
from NeuroRDanal.nrd_output import nrdh5_output
from NeuroRDanal.nrd_group import nrdh5_group


def AllSpecies (root):
    all_species ={}
    cytosol_species=[]
    submembrane_species=[]
    for specie_sub in root.findall('.//PicoSD'):
        submembrane_species.append(specie_sub.get("specieID"))
    all_species['submemb']=np.unique(submembrane_species)
    for specie_cyt in root.findall('.//NanoMolarity'):
        cytosol_species.append(specie_cyt.get("specieID"))
    all_species['cytosol']=np.unique(cytosol_species)# no repet mol name 
    return all_species

def DiffuseSpecies (Rxn_filename):
    species_diff=[]
    tree_rxn=ET.parse(Rxn_filename+'.xml')
    root_rxn=tree_rxn.getroot()
    for elem_rxn in root_rxn:
        if elem_rxn.tag== 'Specie':
            if float(elem_rxn.get('kdiff'))>0:
                species_diff.append(elem_rxn.get('id'))
    return species_diff 

try:
    args = ARGS.split(",")
    print("ARGS =", ARGS, "commandline=", args)
    do_exit = False
except NameError: #NameError refers to an undefined variable (in this case ARGS)
    args = sys.argv[1:]
    print("commandline =", args)
    do_exit = True

if len(args[1]):
    all_species=args[1].split()
else:
    all_species=None

dendname="dend" #from morph file
spinehead="head" #from morph file
submembname=dendname+'sub' 

#load the data 
ftuples,parlist,params=h5utilsV2.argparse(args)
for fnum,ftuple in enumerate(ftuples):
    data=nrdh5_output(ftuple)
    data.rows_and_columns(all_species,args)
    data.molecule_population()
    #print(data.data['model']['grid'][:])
    if data.maxvols>1:
        data.region_structures(dendname,submembname,spinehead)#,stimspine) #stimspine is optional
        data.average_over_voxels()

#mol concentration for both spine and submem
mole_conc_ic={M:{} for M in data.molecules}
for mol in data.molecules:
    mole_conc_ic[mol]['general']=np.mean(np.mean(data.OverallMean[mol]))
if data.maxvols>1:
    mylist=['region','struct']
    for ii, regions_params in enumerate (mylist):
        for mol in data.molecules:
            for jj,key in enumerate(data.output_labels[regions_params][mol].split()):
                region=key.split('_')[-1]
                mole_conc_ic[mol][region]=np.mean(np.mean(data.means[regions_params][mol][:,-10:,jj],axis=1))

#read in initial conditions file
IC_filename=args[4]
#print(IC_filename)
tree=ET.parse(IC_filename+'.xml')
root=tree.getroot()
tags=list(np.unique([rt.tag for rt in root]))

IC_types={t:{} for t in tags} #dictionary to map region names in IC file to region names in mole_conc_ic
for elem_ic in root:
    if elem_ic.tag=='ConcentrationSet':
        IC_types[elem_ic.tag][elem_ic.get('region')]=elem_ic.get('region')
    if elem_ic.tag=='SurfaceDensitySet':
        IC_types[elem_ic.tag][elem_ic.get('region')]=elem_ic.get('region')+'sub'

## read in reaction file
Rxn_filename=args[5]
## determine which species diffuse
diffuse_species=DiffuseSpecies(Rxn_filename)
all_species=AllSpecies(root) #currently not used
IC_molecules=[]
#Update concentration in IC file
for rt in root:
    subtree=ET.ElementTree(rt)
    if len(rt.attrib):
        region=IC_types[rt.tag][rt.attrib['region']]
    else:
        region='general'
    if rt.tag=='ConcentrationSet' and region=='general':
        re_do_root=rt
        elems=subtree.findall('.//NanoMolarity')
        for e in elems:
            mol=e.attrib['specieID']
            if mol in diffuse_species:
                e.attrib['value']=str(mole_conc_ic[mol]['general'])
                print('updated elems',region,mol,e.attrib)
                IC_molecules.append(mol)
            else:
                print('NOT updating ', region,' for diffusible', mol,e.attrib)
    elif rt.tag=='ConcentrationSet':
        elems=subtree.findall('.//NanoMolarity')
        for e in elems:
            mol=e.attrib['specieID']
            e.attrib['value']=str(mole_conc_ic[mol][region])
            print('updated elems',region,mol,e.attrib)
            IC_molecules.append(mol)
    elif rt.tag=='SurfaceDensitySet':
        elems=tree.findall('.//PicoSD')
        height=data.region_struct_dict[region]['depth']
        for e in elems:
            mol=e.attrib['specieID']
            e.attrib['value']=str(mole_conc_ic[mol][region]*height)
            print('updated elems',rt.tag,region,e.attrib)
            IC_molecules.append(mol)
### Some molecules are not diffusible, but are not specified in region or SurfaceDensitSet
### Those should be specified using general concentration set
subtree=ET.ElementTree(re_do_root)
region='general'
elems=subtree.findall('.//NanoMolarity')
for e in elems:
    mol=e.attrib['specieID']
    if mol not in IC_molecules:
        e.attrib['value']=str(mole_conc_ic[mol]['general'])
        print('Go back and update',region,mol,e.attrib)
        IC_molecules.append(mol)
    
#check if all mol are present in the IC files
IC_file_mols=set(IC_molecules)
h5_mols=set(mole_conc_ic.keys())
both_mols=IC_file_mols & h5_mols

if len(h5_mols-both_mols)>0:
    for mol in h5_mols-both_mols:
        if np.max(list(mole_conc_ic[mol].values()))>0:
            print ('******* ', mol,'missing from IC file, conc non-zero in h5:', mole_conc_ic[mol])
if len(IC_file_mols-both_mols)>0:
    print('************** molecules',IC_file_mols-both_mols, 'in conc file but not in IC file')

#write the new IC file
with open(IC_filename+'h5_update.xml', 'wb') as out:
    out.write(ET.tostring(root))            
'''
'''
 
