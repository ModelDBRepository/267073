# -*- coding: utf-8 -*-
"""
Created on Wed Jul 22 09:33:57 2020

@author: kblackw1
"""

import numpy as np
import sklearn as sc
#import the random forest classifier method
from sklearn.ensemble import RandomForestClassifier
from sklearn import model_selection,metrics,tree
import operator
from matplotlib import pyplot as plt
from matplotlib.colors import ListedColormap


def plotPredictions(max_feat, train_test, predict_dict, class_labels, feature_order,epoch):
    ########## Graph the output using contour graph
    #inputdf contains the value of a subset of features used for classifier, i.e., two different columns from df
    feature_cols = [feat[0] for feat in feature_order]
    
    plt.ion()
    edgecolors=['k','none']
    feature_axes=[(i,i+1) for i in range(0,max_feat,2)]
    print(feature_axes)
    for cols in feature_axes:
        plt.figure()
        plt.title('Epoch '+str(epoch))
        for key,col in zip(train_test.keys(),edgecolors):
            predict=predict_dict[key]
            df=train_test[key][0]
            plot_predict=[class_labels.index(p) for p in predict]
            plt.scatter(df[feature_cols[cols[0]]], df[feature_cols[cols[1]]], c=plot_predict,cmap=ListedColormap(['r', 'b']), edgecolor=col, s=20,label=key)
            plt.xlabel(feature_cols[cols[0]])
            plt.ylabel(feature_cols[cols[1]])
            plt.legend()

def plot_features(list_features,epochs,ylabel):
    plt.ion()
    objects=[name for name,weight in list_features]
    y_pos = np.arange(len(list_features))
    performance = [weight for name, weight in list_features]
    f = plt.figure(figsize=(6,4))

    plt.bar(y_pos, performance, align='center', alpha=0.5)
    plt.xticks(y_pos, objects)
    plt.xticks(rotation=90)
    plt.ylabel(ylabel)
    plt.xlabel('Feature')
    plt.title(ylabel+' over '+epochs+' epochs')
    plt.tight_layout()

def runClusterAnalysis(param_values, labels, num_features, class_labels,epoch,MAXPLOTS):

    ############ data is ready for the cluster analysis ##################
    #select a random subset of data for training, and use the other part for testing
    #sklearn.model_selection.train_test_split(*arrays, **options)
    #returns the top max_feat number of features and their weights

    df_values_train, df_values_test, df_labels_train, df_labels_test = model_selection.train_test_split(param_values, labels, test_size=0.33)
    train_test = {'train':(df_values_train,df_labels_train), 'test':(df_values_test, df_labels_test)}

    #number of estimators (n_estim) is number of trees in the forest
    #This is NOT the number of clusters to be found
    #max_feat is the number of features to use for classification
    #Empirical good default value is max_features=sqrt(num_features) for classification tasks
    max_feat=int(np.ceil(np.sqrt(num_features)))
    n_estim=10
    rtc = RandomForestClassifier(n_estimators=n_estim, max_features=max_feat)

    #This line actually builds the random forest (does the training)
    rtc.fit(df_values_train,df_labels_train)

    ###### EVALUATE THE RESULT
    #calculate a score, show the confusion matrix
    predict_dict = {}
    for nm,(df,labl) in train_test.items():
        predict = rtc.predict(df)
        predict_dict[nm] = predict

    #evauate the importance of each feature in the classifier
    #The relative rank (i.e. depth) of a feature used as a decision node in a tree can be used to assess the relative importance of that feature with respect to the predictability of the target variable. 
    feature_order = sorted({feature : importance for feature, importance in zip(list(df_values_train.columns), list(rtc.feature_importances_))}.items(), key=operator.itemgetter(1), reverse=True)

    
    ###### 3d, plot amd print the predictions of the actual data -- you can do this if # of epochs is low
    if epoch<=MAXPLOTS:
        plotPredictions(max_feat, train_test, predict_dict, class_labels, feature_order,epoch)
    #print('epoch {} best features {}'.format(epoch,feature_order[0:max_feat]))
    return feature_order[0:max_feat], max_feat
