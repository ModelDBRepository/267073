# -*- coding: utf-8 -*-
"""
Created on Wed Jun 17 14:19:08 2020

@author: kblackw1
"""

import numpy as np
single_linear=True

#This bit of code tests whether ppERK increases linearly with duration or concentration
from scipy import optimize
import statsmodels.api as sm
from scipy.stats import pearsonr
import pylab as plt
plt.ion()


def func_linear(x,m,b):                                     
    return m*x+b
def func_hill(x,pow,Kd):
    return x**pow/(x**pow+Kd**pow)
def show_curvefit(X,Y,params,fname):
    plt.figure()
    plt.plot(X,Y/np.max(Y),'*',label='data')
    estimate=func_hill(X,params[0],params[1])
    plt.plot(X,estimate,label='estimate')
    plt.legend()
    plt.title(fname)
    plt.text(0.1,0.1,' '.join([str(round(p,2)) for p in params]),horizontalalignment='center')
                  
def ols_fit(X,Y,constant = None,printR = None): #ordinary least squares
    if constant:                   #by default no constant or y-intercept fitted to equation
        X = sm.add_constant(X)      
    model = sm.OLS(Y,X).fit()
    if printR:
        print(model.summary())     #by default no output printed within function
    return model,model.predict(X)

def regress_val(model, split = None, r = None, constant=False): 
    values={}
    #values['fstat']=round(model.fvalue,2)
    values['adjR']=round(model.rsquared_adj,4)
    #values['f_pvalue']=model.f_pvalue
    '''
    if constant==True:
        values['slope']=model.params[1]
        values['tpvalue']=model.pvalues[1] #significant of the slope
    else:
        values['slope']=model.params
        values['tpvalue']=model.pvalues
    '''
    values['aic']=model.aic
    return values

def fit_hill(dur,ppERK, add_constant=False):
    ppERKnorm=[erk/np.max(ppERK) for erk in ppERK]
    #print(ppERKnorm)
    popt,pcov=optimize.curve_fit(func_hill,dur,ppERKnorm,bounds=([0,0],[10,10000]))
    pow=popt[0]
    Kd=popt[1]
    #print('***********************''Kd',Kd,'*********************','pow',pow)
    hill=[d**pow/(d**pow+Kd**pow) for d in dur]
    model,predictions = ols_fit(hill,ppERKnorm,constant=add_constant)
    return regress_val(model),popt

def fit_log(dur,ppERK,add_constant=False):
    logdur=[np.log10(d) for d in dur]
    model,predictions = ols_fit(logdur,ppERK,constant=add_constant)
    return regress_val(model)


if single_linear==True:
    import glob
    path='./'
    pattern=path+'*_nonLTP_lineartest.txt*'
    add_constant=True
    files=glob.glob(pattern)
    regress={}
    for filename in files:
        fname=filename.split('/')[-1].split('.')[0]
        types=fname.split('_')[1]
        with open(fname+'.txt') as f:
            data = []
            for line in f.readlines():
                data.append(line.split())
            if not data[1][1].replace('.','',1).isdigit():
                types='Dur'
                dur=[float(dat[0]) for dat in data[1:]]
                trials=[dat[1] for dat in data[1:]]
                ppERK=[float(dat[2]) for dat in data[1:]]
            else:
                conc=[float(dat[0]) for dat in data[1:]]
                dur=[float(dat[1]) for dat in data[1:]]
                trials=[dat[2] for dat in data[1:]]
                ppERK=[float(dat[3]) for dat in data[1:]]
        key=fname.split('-')[0]
        if types=="Dur":
            model,predictions = ols_fit(dur,ppERK,constant=add_constant)
            print(fname,'PR',pearsonr(dur,ppERK),'PR2',round(pearsonr(dur,ppERK)[0]**2,3))
        else:
            model,predictions = ols_fit(conc,ppERK,constant=add_constant)
            print(fname,'PR',pearsonr(conc,ppERK),'PR2',round(pearsonr(conc,ppERK)[0]**2,3))
        regress[key] = regress_val(model, constant=add_constant)

        if types=="Dur":
            regress[key+'_log']=fit_log(dur,ppERK)
            regress[key+'_hill'],hill_coef=fit_hill(dur,ppERK)
            show_curvefit(dur,ppERK,hill_coef,fname)
        else:
            regress[key+'_log']=fit_log(conc,ppERK)
            regress[key+'_hill'],hill_coef=fit_hill(conc,ppERK)
            show_curvefit(conc,ppERK,hill_coef,fname)
    for k,vals in regress.items():
        print(k,vals)

    with open('linear.txt', 'w') as f:
        for k,vals in regress.items():
            f.write(k+'  '+'  '.join([str(a)+'='+str(b) for a,b in vals.items()])+'\n')
  
    '''
        popt, pcov = optimize.curve_fit(func_linear,dur,ppERK)    #fits equation to choosen function if possible
        print('This is fit estimate for : ', fname)
        print('popt',popt)
        print('pcov',np.sqrt(np.diag(pcov))) 
    '''

##########This bit of code tests whether ppERK combination = summation 
else:
    import pandas as pd
    from statsmodels.formula.api import ols
    import os
    import matplotlib.pyplot as plt
    import glob
    from contextlib import redirect_stdout
    #fname='cAMPGbgCa_lineartest.txt'
    results={}
    PATH='./'
    Pattern=PATH+'*Combo'+"*-lineartest.txt"
    files=sorted(glob.glob(Pattern))
    #files=['allCombo_lineartest']

    for filename in files:
        fname=filename.split('/')[-1].split('.')[0]
        with open(fname+'.txt') as f:
            data = []
            for line in f.readlines():
                data.append(line.split())
                dur_or_Conc_or_ITI=[float(dat[0]) for dat in data[1:]]
                trials=[dat[1] for dat in data[1:]]
                input1_ppERK=np.array([float(dat[2]) for dat in data[1:]])
                input2_ppERK=np.array([float(dat[3]) for dat in data[1:]])
                if len(data[0])>5:
                    input3_ppERK=np.array([float(dat[4]) for dat in data[1:]])
                    combo_ppERK=np.array([float(dat[5]) for dat in data[1:]])
                    sum_ppERK=input1_ppERK+input2_ppERK+input3_ppERK
                else:
                  combo_ppERK=np.array([float(dat[4]) for dat in data[1:]])
                  sum_ppERK=input1_ppERK+input2_ppERK   
                #reformat the data
        sum_or_combo=['sum' for i in sum_ppERK]+['combo' for i in sum_ppERK]
        alltrials=trials+trials
        all_dur_conc=dur_or_Conc_or_ITI+dur_or_Conc_or_ITI
        ppERK=np.zeros(2*len(sum_ppERK))
        ppERK[0:len(sum_ppERK)]=sum_ppERK
        ppERK[len(sum_ppERK):]=combo_ppERK
        df_data={'sum_combo':sum_or_combo,'trial':alltrials,'dur_conc_ITI':all_dur_conc,'ppERK':ppERK}
        df=pd.DataFrame(df_data)
        results=ols('ppERK ~C(sum_or_combo)+ dur_conc_ITI',data=df).fit()#ols('ppERK ~C(sum_or_combo)* dur_conc_ITI',data=df).fit()
        #print(fname,results.summary())
        plt.ion()
        plt.figure()
        plt.plot(dur_or_Conc_or_ITI,sum_ppERK,'ro',label=fname+'sum')
        plt.plot(dur_or_Conc_or_ITI,combo_ppERK,'bs',label=fname+'combo')
        plt.legend()
        with open(fname.split('-')[0]+'-NOVA.txt','w') as f:
            with redirect_stdout(f):
                print(fname,results.summary())
        


