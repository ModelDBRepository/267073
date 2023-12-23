import numpy as np
comboTest=True
allcombo=1
if allcombo==1:
    files=['GbgC100cAMPC500_LTP',
           'CaC500_LTP',
           'GbgC100CaC500cAMPC500_LTP']
    outname='allCombo_Ca500'
    names=['cAMPC500GbgC100','CaC500','Combo']
    
    
if allcombo==2 :
    files=['GbgC100cAMPC500_LTP',
           'CaC1000_LTP',
           'GbgC100CaC1000cAMPC500_LTP']
    outname='allCombo_Ca1000'
    names=['cAMPC500GbgC100','CaC1000','Combo']
    
    
if allcombo==3 :
    files=['GbgC100cAMPC500PP1R50_LTP',
           'CaC1000PP1R50_LTP',
           'GbgC100CaC1000cAMPC500PP1R50_LTP']
    outname='allCombo_Ca1000PP1R50'
    names=['cAMPC500GbgC100PP1R50','CaC1000PP1R50','Combo']

if allcombo==4:
    files=['GbgC100cAMPC50BEpacRap_LTP',
           'GbgC100cAMPC50BPKARap_LTP',
           'GbgC100_LTP',
           'GbgC100cAMPC500_LTP']
    outname='cAMPGbg2Combo'
    names=['PKA','Epac','GbgC100','Combo']
    
if allcombo==5:
    files=['cAMPC500_LTP',
           'GbgC100_LTP',
           'GbgC100cAMPC500_LTP']
    outname='cAMPGbgCombo'
    names=['cAMPC500','GbgC100','Combo']

alldata=[]
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
    header='ITI    Trial '+' '.join(names)
    output_name=outname+'_LTP-lineartest.txt'
    with open(output_name,'w') as f:
        np.savetxt(f, outputdata, fmt="%s", header=header,comments='#')
