import glob
import os
from lxml import etree
from xml.etree import ElementTree as ET
import numpy as np

#############if the complex have an higher volume than the single molecules, use add the concentration here############

iPath='/home/nadia/ERK/Experiment/simulation/'
mPath='/home/nadia/ERK/Experiment/simulation/Robustness/analysis/'
oPath='/home/nadia/ERK/Experiment/simulation/Robustness/analysis/set1.1/'

def random_file(suffix_name,frange,find_filename,mol_change):
    for i in range(frange):
        find_name=os.path.basename(find_filename)
        iPath=os.path.dirname(find_filename)
        outfile=oPath+find_name+'-random'+str(i)+'.xml'
        root=ET.parse(find_filename+'.xml').getroot()
        for mol in mol_change.keys():
            for molecules in mol_change[mol]:  
                for elem in root:
                    for subelem in elem:
                        if molecules== subelem.attrib['specieID']:
                            oldval=float(subelem.attrib['value'])
                            newval=str(np.random.uniform(.9,1.1)*oldval) #np.random(low, high)
                            subelem.attrib['value']=newval     
                            with open(outfile, 'wb') as out:
                                out.write(ET.tostring(root))

def set_file(suffix_name,find_filename,factor,mol_change):  
    root=ET.parse(find_filename+'.xml').getroot()
    find_name=os.path.basename(find_filename)
    iPath=os.path.dirname(find_filename)
    for mol in mol_change.keys():
        for molecules in mol_change[mol]: 
                for elem in root:
                    for subelem in elem:
                         if molecules== subelem.attrib['specieID']:
                             oldval=float(subelem.attrib['value'])
                             newval=str(oldval*factor)
                             subelem.attrib['value']=newval
                             outfile=oPath+find_name+'-set'+subelem.attrib['specieID']+str(factor)+'.xml'
                             with open(outfile, 'wb') as out:
                                out.write(ET.tostring(root))
          
############################ create model file with replace one line ######################################
def modelrobust_file(fileNames_model,replace_filename,input_filename,find_filename):
    for replace in fileNames_model:
        replace_filename=os.path.split(replace)[-1]
        for filename in input_filename:
            input_name=os.path.split(filename)[-1]
            with open (mPath+input_name,'r') as input:
                filedata=input.read()
                filedata=filedata.replace(find_filename.split('/')[-1]+'.xml',replace_filename)
                out_filename=oPath+input_name.split('.')[0]+'-'+replace_filename.split('-')[-1]
                with open (out_filename,'w') as out:
                    out.write(filedata)


##################################### create batch file #############################3
def bat_file(text,fileNames_batch,suffix_name):
    outfname=suffix_name+'.bat'
    f=open(iPath+outfname,'w')
    for files in fileNames_batch:
        textline=text+'   '+files.split('/')[-1]+'\n'
        f.write(textline)
    f.close()
#################################################################
