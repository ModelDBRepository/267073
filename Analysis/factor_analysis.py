#slope is the max-min/max
#delta best is 300ITI-80ITI   
#deltaMaxMin is max-min
# not that all are normalized 

import os
import numpy as np
import glob
#import csv
import seaborn as sns
save=1


####find ccontrol data first
conc=1### need to be change if Ca 1000 is used

if conc==0.5:
    crtl_raw=[1.213,1.557,1.719,1.916,2.512]##cAMPCa500
    f='analysisfactor500.npy'
    pattern='./'+'cAMPCaC500_mol-*'+"*.txt"
else:
    crtl_raw=[5.806,6.173,6.570,7.645,7.585]##cAMPCa1000
    f='analysisfactor1000.npy'
    pattern='./'+'cAMPCaC1000_mol-*'+"*.txt"
crtl_data=(max (crtl_raw)-min(crtl_raw))/max(crtl_raw)
#crtl_data2=(max (crtl_raw)-min(crtl_raw))/(80-300)
crtlMaxMin=max(crtl_raw)-min(crtl_raw)
crtlMean=np.mean(crtl_raw)
#crtlbest=crtl_raw[4]-crtl_raw[3]


#where and how to find the experiment files from pattern (up)
files_set=glob.glob(pattern)

######calculate experiment/simulation data#############


#trials and param
num_trials=5#change if more than 3 trials 
ITIs=[3,20,40,80,300]
#extract data 
results={}
for each in files_set:
    fname=os.path.basename(each).split('.')[0].split('-')[-1]
    results[fname]={}
    #read data and rearange data into correct format
    with open (each,'r') as infile:
        alldata=infile.readlines()
        header=alldata[0].split()
        for line in alldata[1:]:
            items=line.split()
            mol=items[0]
            tmp=items[1:]
            trialdata=np.array(tmp).reshape(len(ITIs),num_trials).T.astype(np.float) #reshap and transpose data based on lengh of ITI and number of trials
            results[fname][mol]={trialnum:trialdata[trialnum] for trialnum in range(len(trialdata))}
            
#perform calculation
summary={f: {} for f  in results.keys()}
for files in results.keys():
    #for mol
    for molecules in results[files].keys(): 
        for trial,rows in results[files][molecules].items():
            summary[files][(molecules,trial)]={} 
            best=np.argmax(rows)
            summary[files][(molecules,trial)]['bestITI']=ITIs[best]
            min_index=np.argmin(rows)
            summary[files][(molecules,trial)]['slope']=((float(rows[best])-float(rows[min_index]))/float(rows[best]))
            summary[files][(molecules,trial)]['slope_norm']=(((float(rows[best])-float(rows[min_index]))/float(rows[best]))/crtl_data)
            #summary[files][(molecules,trial)]['slope_norm2']=(((float(rows[best])-float(rows[min_index]))/(best-min_index)))
            #summary[files][(molecules,trial)]['deltabest']=((float(rows[4])-float(rows[3])))/crtlbest
            summary[files][(molecules,trial)]['deltaMaxMin']=((float(rows[best])-float(rows[min_index])))/crtlMaxMin
            summary[files][(molecules,trial)]['Meandata']=np.mean(rows)/crtlMean
            summary[files][(molecules,trial)]['percentdelta']=(summary[files][(molecules,trial)]['deltaMaxMin']-1)*100
            summary[files][(molecules,trial)]['percentMeandata']=(summary[files][(molecules,trial)]['Meandata']-1)*100
            summary[files][(molecules,trial)]['percentslope']=(summary[files][(molecules,trial)]['slope_norm']-1)*100
            summary[files][(molecules,trial)]['MinITI']=float(rows[min_index])


#analysis
import pandas as pd
from matplotlib import pyplot as plt
plt.ion()
import seaborn as sns
save_his={}
col=['bestITI']#['deltaMaxMin','slope_norm','Meandata']#,'deltaMaxMin']
col2=['percentdelta','percentMeandata']#,'percentslope']
his_fig,axes=plt.subplots(nrows=len(col2),ncols=1)
for files,data in summary.items():
    df=pd.DataFrame.from_dict(data,orient='index')
    #df.index.set_names(['mol','trial'])
    #count bestITI to assess favored 
    count_best=pd.DataFrame(df.groupby('bestITI').count())
    best=count_best.rename(columns={'slope':'bestITI'}).pop('slope_norm')
    print(files,best)
    for ax,features in enumerate(col2):
        values,bins=np.histogram(df[features],bins=20)
        plot_bins=[(bins[i]+bins[i+1])/2 for i in range (len(values))]
        save_his[features+files]=np.column_stack((values,plot_bins))
        axes[ax].bar(plot_bins,values,width=(bins[-1]-bins[0])/len(bins),label=features+files)
        axes[ax].legend()
    #correlation
    #corr_df = df.corr()[['slope_norm','slope','bestITI']].sort_values('bestITI',axis=0)#why do we need that???
    #print(corr_df)
    #plot data for bestITI
    plt.figure()
    best.plot.pie(y='bestTIT',title=files)
his_txt=np.empty((len(plot_bins),0),int)
header=''
for k,v in save_his.items():
    his_txt=np.column_stack((his_txt,v))
    header=header+k+'  '+'bin'+k+'  '
np.savetxt('factorHis.txt',his_txt,header=header,fmt='%.3f',comments='')

for files,data in summary.items():
    df=pd.DataFrame.from_dict(data,orient='index')
    for j,jj in enumerate (col):
        data_param=pd.DataFrame(df[jj].mean(level=0))
        data_param['std']=pd.DataFrame(df[jj].std(level=0))/np.sqrt(5)
        data_param.plot(y=jj,yerr='std',kind='bar',capsize=2,title=files)
        plt.ylabel(jj)
        plt.tight_layout() 
'''    
    #deltabest_mean=pd.DataFrame(df['deltabest'].mean(level=0))
    #plt.figure()
    #deltabest_mean.plot.bar(title=files)
    #plt.ylabel('deltabest')
    #plt.tight_layout()
    for j,jj in enumerate (col):
        data_param=pd.DataFrame(df[jj].mean(level=0)-1)
        data_param['std']=pd.DataFrame(df[jj].std(level=0))/np.sqrt(5)
  
        #jg = sns.jointplot(df['bestITI'],df[jj].round(2),ratio=5,xlim=(0,df['bestITI'].max()*1.1),ylim=(df[jj].min()*0.9,df[jj].max()*1.1),s=10,alpha=.8,edgecolor='0.2',linewidth=.2,color='k',marginal_kws=dict(bins=10))#might want to adjust depending of your data (bin, xlim and ylim) 
        #plt.title(jj+" vs bestITI")
        #plot data 
        data_param.plot(y=jj,yerr='std',kind='bar',capsize=2,title=files)
        plt.ylabel(jj)
        plt.tight_layout()     
       
        outfname=files+'.txt'
        outfname2=files+'_best.txt'
        outfname3=files+'_deltaMaxMin.txt'
        if save==1:
            data_param.to_csv(outfname)###it is only saving one file 
            
'''
