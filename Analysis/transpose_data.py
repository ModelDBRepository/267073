# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""
import numpy as np
comboTest=False
allcombo=3
if allcombo==1:
    files=['cAMPC500GbgC100_Dur_nonLTP',
           'CaC500_Dur_nonLTP2',
           'CaC500cAMPC500GbgC100_Dur_nonLTP']
    outname='allCombo'
    names=['cAMPC500GbgC100','CaC500','Combo']
if allcombo==2:
    files=['cAMPC500_Dur_nonLTP',
           'GbgC100_Dur_nonLTP',
           'CaC500_Dur_nonLTP2',
           'CaC500cAMPC500GbgC100_Dur_nonLTP']
    outname='all2Combo'
    names=['cAMPC500','GbgC100','CaC500','Combo']

if allcombo==3:
    files=['cAMPC500_Dur_nonLTP',
           'GbgC100_Dur_nonLTP',
           'cAMPC500GbgC100_Dur_nonLTP']
    outname='cAMPGbgCombo'
    names=['cAMPC500','GbgC100','Combo']

filename=['CaC500_Dur_nonLTP',
       'Cadur1_Conc_nonLTP',
       'cAMPdur1_Conc_nonLTP',
       'cAMPC500_Dur_nonLTP',
       'GbgC100_Dur_nonLTP',
       'Gbgdur1_Conc_nonLTP']
#cAMPC500GbgC100_Dur_nonLTP


alldata=[]
if comboTest==False:
    for fname in filename:
        #print(fname)
        with open(fname+'.txt') as f:
            data = []
            for line in f.readlines():
                data.append(line.split())
        param1=[dat[0] for dat in data[1:]]
        start_column=1
        trials=data[0][1:]
        #test header
        if len(data[0])<len(data[1]):
            param2=[dat[1] for dat in data[1:]]
            start_column=2
        new_column=np.zeros(len(param1)*len(trials))
        new_param=[]
        new_trials=[]
        for row,dat in enumerate(data[1:]):
            for col,num in enumerate(dat[start_column:]):
                if len(data[0])<len(data[1]):
                    new_param.append([param1[row],param2[row]])
                else: 
                    new_param.append(param1[row])
                new_trials.append(trials[col])
                new_column[row*len(trials)+col]=data[row+1][col+start_column]
        outputdata=np.column_stack((new_param,new_trials,new_column))
        if len(data[0])<len(data[1]):
            header='param1  param2    Trial '+'ppERK'
        else: 
            header='param1   Trial '+'ppERK'
        output_name=fname+'_lineartestTEST.txt'
        with open(output_name,'w') as f:
            np.savetxt(f, outputdata, fmt="%s", header=header,comments='#')


else:        
    for fname in files:
         #print(fname)
        with open(fname+'.txt') as f:
            data = []
            for line in f.readlines():
                data.append(line.split())
        param1=[dat[0] for dat in data[1:]]
        start_column=1
        trials=data[0][1:]
        #test header
        if len(data[0])<len(data[1]):
            param2=[dat[1] for dat in data[1:]]
            start_column=2
        new_column=np.zeros(len(param1)*len(trials))
        new_param=[]
        new_trials=[]
        for row,dat in enumerate(data[1:]):
            for col,num in enumerate(dat[start_column:]):
                if len(data[0])<len(data[1]):
                    new_param.append([param1[row],param2[row]])
                else: 
                    new_param.append(param1[row])
                new_trials.append(trials[col])
                new_column[row*len(trials)+col]=data[row+1][col+start_column]
        alldata.append(new_column)
        outputdata=np.zeros((len(new_column),len(alldata)+2))
        for i in range(len(alldata)):
            outputdata[:,i]=alldata[i]
        outputdata=np.column_stack((new_param,new_trials,outputdata))
        header='Dur    Trial '+' '.join(names)
        output_name=outname+'_lineartest.txt'
        with open(output_name,'w') as f:
            np.savetxt(f, outputdata, fmt="%s", header=header,comments='#')
