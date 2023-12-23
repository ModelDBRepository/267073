# -*- coding: utf-8 -*-
"""
Created on Wed Jul 22 08:34:41 2020

@author: kblackw1
"""

import pandas as pd
import numpy as np
from matplotlib import pyplot as plt
plt.ion()
import pickle
import csv
import operator
random=False
cluster=False


paramsfile='RandomAnalysis_mol.npz'
resultsfile='RandomAnalysis_data_mean.npz'
######## Read data into list #############
dataparams=np.load(paramsfile,'r',allow_pickle=True)
dataresults=np.load(resultsfile,'r',allow_pickle=True)
## if two or more dictionaries in file, extract with
data=dataresults['arr_0'].item()
measures=list(data[list(data.keys())[0]][0])
#if only one dictionary in file, may still need the .item() at end of np.load statment

#if paramsfile has a second entry - which is list of molecule names, extract that, e.g.
molConc=dataparams['arr_0'].item()
molnames=list(molConc[list(molConc.keys())[0]].keys())
#column_names=['filename','trial']+molnames+measures
column_names=['filename','trial']+molnames+measures
##create empty dataframe, but need to know column names
df=pd.DataFrame(columns = column_names) 


for i,f in enumerate(molConc.keys()): #random1, etc
        #print(i,f)
        datakeys=str(i)
        for trial in data[datakeys].keys():
                params=molConc[f] #keys=mol and values=change in conc
                results=data[datakeys][trial] #keys = ITI and values = AUC
                newdict={'filename':datakeys,'trial':trial, **params,**results} 
                df=df.append(newdict,ignore_index = True)
                
               
#verify a few things  
df=df.dropna()
df.head()#print first 5 rows
df.columns #print the column names
df.index #print index - fname,trial
#count bestITIs
best=df.groupby('bestITI').count()
worse=df.groupby('MinITI').count()
print(best,'************************',worse)
plt.figure()
best.plot.pie(y='ERK')
#df.groupby('filename').Count()['ERK'].plot.pie()
group_data=df.groupby('bestITI')
print((group_data.get_group(3).deltaMaxMin).mean())

'''
#if you want to select a subset of the data
df = df[(df.amp<30e-3) ]#& (df.dur>40e-3) & (df.amp>8e-3)]
df_filt = df[df.dur>60e-3]
'''

#correlation
corr_df = df.corr()[['slope_norm','Meandata','deltaMaxMin']]#,'bestITI']]#.sort_values('bestITI',axis=0)
#from tabulate import tabulate
#print(tabulate(corr_df, tablefmt="pipe", headers="keys"))
print(corr_df)

#plot of mean and std
xcol='bestITI'
ycol=['percentslope','percentdelta','percentMeandata']
#plt.figure()
save_hist={}
for j,jj in enumerate (ycol):
        ycolnorm_mean=df.groupby('filename').mean()[jj]
        stdnorm=df.groupby('filename').std()[jj]
        if not random:
                plt.figure()
                plt.title(jj+'vs filename')
                plt.plot(ycolnorm_mean)
                plt.fill_between(range(len(ycolnorm_mean)),ycolnorm_mean+stdnorm,ycolnorm_mean-stdnorm,alpha=.2)#replace range with list of filenaem out of df 
                plt.xlabel('File Name')
                plt.ylabel(jj)
                plt.figure()
                plt.title('Bar')
                df[jj].plot.bar()
                plt.xlabel('File Name')
                plt.ylabel(jj)
        import seaborn as sns
        jg = sns.jointplot(df[xcol].astype('int'),df[jj].round(2),ratio=5,xlim=(0,df[xcol].max()*1.1),ylim=(df[jj].min()*0.9,df[jj].max()*1.1),s=10,alpha=.8,edgecolor='0.2',linewidth=.2,color='k',marginal_kws=dict(bins=40))
        plt.title(jj+" vs " +xcol)
        #jg.set_axis_labels('bestITI','slope_norm')
        hist,bin_edges=np.histogram(df[jj],bins=100)
        plot_bins=[(bin_edges[i]+bin_edges[i+1])/2 for i in range (len(hist))]
        save_hist[jj]=np.column_stack((hist,plot_bins))
        plt.figure()
        plt.title('Histogram of '+jj+' per file')
        plt.bar(plot_bins,hist,width=(plot_bins[1]-plot_bins[0]))
        plt.ylabel('Count')
        plt.xlabel(jj) 

        ##########################################
        from sklearn import datasets, linear_model
        from sklearn.metrics import mean_squared_error, r2_score
        from sklearn.model_selection import train_test_split
        from sklearn.preprocessing import normalize
        from sklearn.ensemble import RandomForestRegressor
        from sklearn.svm import SVR
        
        X = df.drop(['slope_norm','bestITI','filename','trial','slope','deltaMaxMin','Meandata','MinITI','percentslope','percentdelta','percentMeandata'], axis=1)
        y=Yslope = df[jj];label=jj
        #Yiti = df[xcol]
                
        X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.33, random_state=42)
        regr = RandomForestRegressor(n_estimators=1000)
        regr.fit(X_train, y_train)
        y_pred = regr.predict(X_test)
        #print & plot some results
        print('*****************',jj,'train',regr.score(X_train,y_train),'test',regr.score(X_test,y_test),'*********************')
        feature_importance_df = pd.DataFrame(regr.feature_importances_,X.columns,columns=['Random_Forest_Feature_Importance']).sort_values('Random_Forest_Feature_Importance',ascending=False)
        axes = feature_importance_df.plot.barh()
        axes.legend_.set_visible(False)
        f = plt.gcf()
        f.set_size_inches((6,6))
        axes.set_xlim([0,feature_importance_df.max()[0]])
        plt.title('Feature Importance for '+label)
        feature_importance_df.to_csv(jj+'FeatImport_random.txt')

        ######## Substitute important features for nmda_gbar
        num_plots=2
        mols=[feature_importance_df.index[i] for i in range(num_plots)]
        plt.figure()
        plt.title('Prediction '+label)
        for mol in mols:
            plt.scatter(X_test[mol], y_test,alpha=.4,label='actual'+mol)
            plt.scatter(X_test[mol], y_pred,alpha=.4,label='prediction'+mol)
            plt.legend()
            plt.xlabel(jj)
            plt.ylabel('ITIs')
        ############# Standard multiple linear regresion
        from sklearn.feature_selection import f_regression
        import statsmodels.formula.api as smf
        import statsmodels.api as sm
        # Create linear regression object.  Do one at a time
        #y=Yslope;label=jj
        #y=Y300;label='delta300'
        X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.33)#, random_state=42)
        regr = linear_model.LinearRegression();random_state = 1000
        # Train the model using the training sets
        regr.fit(X_train, y_train)
        # Make predictions using the testing set
        y_pred = regr.predict(X_test)

        print('Coefficients: \n', regr.coef_, )
        print("Mean squared error: %.2f"
                % mean_squared_error(y_test, y_pred))
        # Explained variance score: 1 is perfect prediction
        print('Variance score: %.2f' % r2_score(y_test, y_pred))
        pvalfeat=[]
        F = f_regression(X_test, y_test, center=True)
        for feat, pval in zip(X_test.columns, F[1]):
                pvalfeat.append((pval,feat))
                print('feature: {}, pvalue: {}'.format(feat,pval))
        #select top features from above to use instead of these:    
        sortedpval=sorted(pvalfeat)[:3]
        statsmol=[]
        for i,ii in sortedpval:
             statsmol.append(ii)   
        mod = sm.OLS(y_train,X_train[statsmol])
        res = mod.fit()
        print(res.summary())

        ##################### Random Forest clutser on bestITI
        from RandomForestUtils import plotPredictions, plot_features, runClusterAnalysis

        if cluster==True:
                Y = df[xcol]
                ITIs=list(np.unique(Y.values))
                num_feat=len(X.columns)
                MAXPLOTS=0
                epochs=100

                collectionBestFeatures = {}
                collectionTopFeatures = {}
                for epoch in range(0, epochs):
                    features, max_feat = runClusterAnalysis(X,Y.astype('int'),num_feat,ITIs,epoch,MAXPLOTS)
                    print()
                    #pass in parameter to control plotting
                    print('######### BEST FEATURES for EPOCH '+str(epoch)+' #######')
                    for i,(feat, weight) in enumerate(features):
                        print(i,feat,weight) #monitor progress 
                        if feat not in collectionBestFeatures:          # How is the weight scaled? caution
                            collectionBestFeatures[feat] = weight
                        else:
                            collectionBestFeatures[feat] += weight

                    f, w = features[0]
                    if f not in collectionTopFeatures:
                        collectionTopFeatures[f] = 1
                    else:
                        collectionTopFeatures[f] += 1

                listBestFeatures=sorted(collectionBestFeatures.items(),key=operator.itemgetter(1),reverse=True)
                listTopFeatures=sorted(collectionTopFeatures.items(),key=operator.itemgetter(1),reverse=True)

                if MAXPLOTS:
                    plot_features(listBestFeatures,str(epochs),'Total Weight '+jj)
                    plot_features(listTopFeatures,str(epochs),'Count '+jj)


hist_txt=np.empty((len(plot_bins),0),int)
header=''
for k,v in save_hist.items():
    hist_txt=np.column_stack((hist_txt,v))
    header=header+k+'  '+'bin'+k+'  '
np.savetxt('RandomHis.txt',hist_txt,header=header,fmt='%.3f',comments='')


