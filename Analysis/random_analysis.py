import os
import numpy as np
import glob
import csv
#from matplotlib import pyplot as plt

####find ccontrol data first
crtl_raw=[5.806,6.173,6.570,7.645,7.585]##cAMPCa1000
crtl_data=(max (crtl_raw)-min(crtl_raw))/max(crtl_raw)
crtlMaxMin=max(crtl_raw)-min(crtl_raw)
crtlMean=np.mean(crtl_raw)
#trials and param
num_trials=5#change if more than 3 trials 
ITIs=[3,20,40,80,300]


def cal_sum(rows,crtl_data,crtlMaxMin,crtlMean):
    summary={}
    best=np.argmax(rows)
    summary['bestITI']=ITIs[best]
    min_index=np.argmin(rows)
    #summary['slope']=(float(rows[best])-float(rows[min_index]))/float(rows[best])
    summary['slope_norm']=((float(rows[best])-float(rows[min_index]))/float(rows[best]))/crtl_data
    #summary['deltabest']=((float(rows[4])-float(rows[3])))/crtlbest
    summary['deltaMaxMin']=((float(rows[best])-float(rows[min_index])))/crtlMaxMin
    summary['Meandata']=np.mean(rows)/crtlMean
    summary['percentdelta']=(summary['deltaMaxMin']-1)*100
    summary['percentMeandata']=(summary['Meandata']-1)*100
    summary['percentslope']=(summary['slope_norm']-1)*100
    summary['MinITI']=ITIs[min_index]
    return summary


fil='cAMPCaC1000_random.txt'
results={}
with open (fil,'r') as infile:
    alldata=infile.readlines()
    header=alldata[0].split()
    for line in alldata[1:]:
        items=line.split()
        frange=items[0]
        tmp=items[1:]
        trialdata=np.array(tmp).reshape(num_trials,len(ITIs)).astype(np.float)
        results[frange]={trialnum:trialdata[trialnum] for trialnum in range(len(trialdata))}
mean_results={}

for frange in results.keys():
    mean_results[frange]={}
    tmp=[]
    for tr,values in results[frange].items():
        tmp.append(values)
    mean_results[frange]=np.mean(tmp,axis=0)
        
summary={}#{f: {} for f  in results.keys()}

for random in results.keys():
    summary[random]={}
    for trial,rows in results[random].items():
        summary[random][trial]=cal_sum(rows,crtl_data,crtlMaxMin,crtlMean)
        
mean_summary={}#f: {} for f  in mean_results.keys()}
for random,rows in mean_results.items():
    mean_summary[random]=cal_sum(rows,crtl_data,crtlMaxMin,crtlMean)
    
import pandas as pd
df=pd.DataFrame(mean_summary,orient='index')
df.groupby('bestITI')

outfname='RandomAnalysis_data'
np.savez(outfname,summary)


