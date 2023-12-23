mol_change={'ERK':['ERK'], 'MEK':['MEK'],'MKP1':['MKP1'],'PP2A':['PP2A'],'CRaf':['Raf1'],'BRaf':['bRaf'],'PDE2':['PDE2'],'PDE4':['PDE4'],'PKA':['PKA'],'Src':['Src'],'Cbl':['Cbl'],'CRKC3G':['CRKC3G'],'CamKII':['CK'],'PP1':['PP1'],'Cam':['Cam'],'Ng':['Ng'],'Grb2':['Grb2'],'Sos':['Sos'],'Shc':['Shc'],'RasGRF':['RasGRF'],'Epac':['Epac'],'Ras':['RasGDP'],'Rap1':['Rap1GDP'],'pmca':['pmca'],'ncx':['ncx'],'Calbin':['Calbin'],'FixBuff':['CB'],'rasGap':['rasGap'],'rapGap':['rap1Gap'],'SynGap':['SynGap']}
import glob
import os
from lxml import etree
from xml.etree import ElementTree as ET
import numpy as np

crtl_list={}
filename='IC_ERK_basald.xml'
root=ET.parse(filename).getroot()
for mol in mol_change.keys():
     for elem in root:
          for subelem in elem:
               if mol==subelem.attrib['specieID']:
                    val=float(subelem.attrib['value'])
          crtl_list[mol]=val

PATH='/home/nadia/ERK/Experiment/simulation/Robustness/analysis/Random/'
pattern_IC=PATH+'IC'+'*'+'random*'+'*.xml'
IC_filename=sorted(glob.glob(pattern_IC)) 
all_list={}
#
for file_name in IC_filename:
     root=ET.parse(file_name).getroot()
     f=file_name.split('-')[-1].split('.')[0]
     all_list[f]={}
     for mol in crtl_list.keys():
          for elem in root:
               for subelem in elem:
                    if mol== subelem.attrib['specieID']:
                         change_val=float(subelem.attrib['value'])/crtl_list[mol]
                         all_list[f][mol]=change_val
outfname='RandomAnalysis_mol'
np.savez(outfname,all_list)

