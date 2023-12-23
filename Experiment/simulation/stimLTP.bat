###SINGLE PATHWAY CONTRIBUTION IN L-LTP ERK: ppERK axctivation 
##cAMP
#LTP cAMP=0.5 um
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/cAMP/cAMP_stim/Model_ERK-stimd-C500-train4-inter3.xml  LTP_h5/Model_ERK-LTPcAMPC500-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/cAMP/cAMP_stim/Model_ERK-stimd-C500-train4-inter20.xml  LTP_h5/Model_ERK-LTPcAMPC500-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/cAMP/cAMP_stim/Model_ERK-stimd-C500-train4-inter40.xml  LTP_h5/Model_ERK-LTPcAMPC500-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/cAMP/cAMP_stim/Model_ERK-stimd-C500-train4-inter80.xml  LTP_h5/Model_ERK-LTPcAMPC500-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/cAMP/cAMP_stim/Model_ERK-stimd-C500-train4-inter300.xml LTP_h5/Model_ERK-LTPcAMPC500-inter300

#LTP cAMP= 1um
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/cAMP/cAMP_stim/Model_ERK-stimd-C1000-train4-inter3.xml  LTP_h5/Model_ERK-LTPcAMPC1000-inter3
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/cAMP/cAMP_stim/Model_ERK-stimd-C1000-train4-inter20.xml  LTP_h5/Model_ERK-LTPcAMPC1000-inter20
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/cAMP/cAMP_stim/Model_ERK-stimd-C1000-train4-inter40.xml  LTP_h5/Model_ERK-LTPcAMPC1000-inter40
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/cAMP/cAMP_stim/Model_ERK-stimd-C1000-train4-inter80.xml  LTP_h5/Model_ERK-LTPcAMPC1000-inter80
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/cAMP/cAMP_stim/Model_ERK-stimd-C1000-train4-inter300.xml LTP_h5/Model_ERK-LTPcAMPC1000-inter300


##CALCIUM 
#LTP calcium=0.5 um
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/Ca_stim/Model_ERK-stimd-C500-train4-inter3.xml  LTP_h5/Model_ERK-LTPCaC500-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/Ca_stim/Model_ERK-stimd-C500-train4-inter20.xml  LTP_h5/Model_ERK-LTPCaC500-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/Ca_stim/Model_ERK-stimd-C500-train4-inter40.xml  LTP_h5/Model_ERK-LTPCaC500-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/Ca_stim/Model_ERK-stimd-C500-train4-inter80.xml  LTP_h5/Model_ERK-LTPCaC500-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/Ca_stim/Model_ERK-stimd-C500-train4-inter300.xml LTP_h5/Model_ERK-LTPCaC500-inter300

#LTP calcium= 1um
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/Ca_stim/Model_ERK-stimd-C1000-train4-inter3.xml  LTP_h5/Model_ERK-LTPCaC1000-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/Ca_stim/Model_ERK-stimd-C1000-train4-inter20.xml  LTP_h5/Model_ERK-LTPCaC1000-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/Ca_stim/Model_ERK-stimd-C1000-train4-inter40.xml  LTP_h5/Model_ERK-LTPCaC1000-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/Ca_stim/Model_ERK-stimd-C1000-train4-inter80.xml  LTP_h5/Model_ERK-LTPCaC1000-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/Ca_stim/Model_ERK-stimd-C1000-train4-inter300.xml LTP_h5/Model_ERK-LTPCaC1000-inter300

####Knockout Ca
#CKauto 
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter3-blockCKauto.xml  LTP_h5/Model_ERK-LTPCaC1000BCKauto-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter20-blockCKauto.xml  LTP_h5/Model_ERK-LTPCaC1000BCKauto-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter40-blockCKauto.xml  LTP_h5/Model_ERK-LTPCaC1000BCKauto-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter80-blockCKauto.xml  LTP_h5/Model_ERK-LTPCaC1000BCKauto-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter300-blockCKauto.xml LTP_h5/Model_ERK-LTPCaC1000BCKauto-inter300

#pSynGapKcat 
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter3-blockpSynGapKcat.xml  LTP_h5/Model_ERK-LTPCaC1000BpSynGapKcat-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter20-blockpSynGapKcat.xml  LTP_h5/Model_ERK-LTPCaC1000BpSynGapKcat-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter40-blockpSynGapKcat.xml  LTP_h5/Model_ERK-LTPCaC1000BpSynGapKcat-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter80-blockpSynGapKcat.xml  LTP_h5/Model_ERK-LTPCaC1000BpSynGapKcat-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter300-blockpSynGapKcat.xml LTP_h5/Model_ERK-LTPCaC1000BpSynGapKcat-inter300

#pSynGap 
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter3-blockpSynGap.xml  LTP_h5/Model_ERK-LTPCaC1000BpSynGap-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter20-blockpSynGap.xml  LTP_h5/Model_ERK-LTPCaC1000BpSynGap-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter40-blockpSynGap.xml  LTP_h5/Model_ERK-LTPCaC1000BpSynGap-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter80-blockpSynGap.xml  LTP_h5/Model_ERK-LTPCaC1000BpSynGap-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter300-blockpSynGap.xml LTP_h5/Model_ERK-LTPCaC1000BpSynGap-inter300

#pSynden 
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter3-blockpSynden.xml  LTP_h5/Model_ERK-LTPCaC1000BpSynden-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter20-blockpSynden.xml  LTP_h5/Model_ERK-LTPCaC1000BpSynden-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter40-blockpSynden.xml  LTP_h5/Model_ERK-LTPCaC1000BpSynden-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter80-blockpSynden.xml  LTP_h5/Model_ERK-LTPCaC1000BpSynden-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter300-blockpSynden.xml LTP_h5/Model_ERK-LTPCaC1000BpSynden-inter300

#CK 
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter3-blockCK.xml  LTP_h5/Model_ERK-LTPCaC1000BCK-inter3
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter20-blockCK.xml  LTP_h5/Model_ERK-LTPCaC1000BCK-inter20
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter40-blockCK.xml  LTP_h5/Model_ERK-LTPCaC1000BCK-inter40
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter80-blockCK.xml  LTP_h5/Model_ERK-LTPCaC1000BCK-inter80
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Ca/knockout/Model_ERK-stimd-C1000-train4-inter300-blockCK.xml LTP_h5/Model_ERK-LTPCaC1000BCK-inter300

##GBG
#LTP Gbg= .1um
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Gbg/Model_ERK-stimd-train4-C100-inter3.xml  LTP_h5/Model_ERK-LTPGbgC100-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Gbg/Model_ERK-stimd-train4-C100-inter20.xml  LTP_h5/Model_ERK-LTPGbgC100-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Gbg/Model_ERK-stimd-train4-C100-inter40.xml  LTP_h5/Model_ERK-LTPGbgC100-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Gbg/Model_ERK-stimd-train4-C100-inter80.xml  LTP_h5/Model_ERK-LTPGbgC100-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Gbg/Model_ERK-stimd-train4-C100-inter300.xml LTP_h5/Model_ERK-LTPGbgC100-inter300



###CALCIUM AND CAMP PATHWAY CONTRIBUTION IN L-LTP ERK: importance of differnt pathways 


###GBG AND CAMP PATHWAY CONTRIBUTION IN L-LTP ERK: competion for src with PKA???
#Gbg=.1 uM and cAMP=.5 uM
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Multiplepath/Model_ERK-stimd-GbgC100-cAMPC500-train4-inter3.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC500-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Multiplepath/Model_ERK-stimd-GbgC100-cAMPC500-train4-inter20.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC500-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Multiplepath/Model_ERK-stimd-GbgC100-cAMPC500-train4-inter40.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC500-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Multiplepath/Model_ERK-stimd-GbgC100-cAMPC500-train4-inter80.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC500-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Multiplepath/Model_ERK-stimd-GbgC100-cAMPC500-train4-inter300.xml LTP_h5/Model_ERK-LTPGbgC100cAMPC500-inter300

##block EPacRap--- PKA contribution
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/cAMP/Knockout/Model_ERK-stimd-GbgC100-cAMPC500-train4-BEpacRap-inter3.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC50BEpacRap-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/cAMP/Knockout/Model_ERK-stimd-GbgC100-cAMPC500-train4-BEpacRap-inter20.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC50BEpacRap-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/cAMP/Knockout/Model_ERK-stimd-GbgC100-cAMPC500-train4-BEpacRap-inter40.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC50BEpacRap-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/cAMP/Knockout/Model_ERK-stimd-GbgC100-cAMPC500-train4-BEpacRap-inter80.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC50BEpacRap-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/cAMP/Knockout/Model_ERK-stimd-GbgC100-cAMPC500-train4-BEpacRap-inter300.xml LTP_h5/Model_ERK-LTPGbgC100cAMPC50BEpacRap-inter300

###block PKARap--Epac contribution 
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/cAMP/Knockout/Model_ERK-stimd-C500-train4-BPKARap-inter3.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC50BPKARap-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/cAMP/Knockout/Model_ERK-stimd-C500-train4-BPKARap-inter20.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC50BPKARap-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/cAMP/Knockout/Model_ERK-stimd-C500-train4-BPKARap-inter40.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC50BPKARap-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/cAMP/Knockout/Model_ERK-stimd-C500-train4-BPKARap-inter80.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC50BPKARap-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/cAMP/Knockout/Model_ERK-stimd-C500-train4-BPKARap-inter300.xml LTP_h5/Model_ERK-LTPGbgC100cAMPC50BPKARap-inter300

###CALCIUM AND CAMP AND GB: how does GBG PATHWAY CONTRIBUT IN L-LTP ERK
#Ca=.5 uM and cAMP=.5 uM and Gbg=.1 uM
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Multiplepath/Model_ERK-stimd-GbgC100-cAMPC500-CaC500-train4-inter3.xml  LTP_h5/Model_ERK-LTPGbgC100CaC500cAMPC500-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Multiplepath/Model_ERK-stimd-GbgC100-cAMPC500-CaC500-train4-inter20.xml  LTP_h5/Model_ERK-LTPGbgC100CaC500cAMPC500-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Multiplepath/Model_ERK-stimd-GbgC100-cAMPC500-CaC500-train4-inter40.xml  LTP_h5/Model_ERK-LTPGbgC100CaC500cAMPC500-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Multiplepath/Model_ERK-stimd-GbgC100-cAMPC500-CaC500-train4-inter80.xml  LTP_h5/Model_ERK-LTPGbgC100CaC500cAMPC500-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Multiplepath/Model_ERK-stimd-GbgC100-cAMPC500-CaC500-train4-inter300.xml LTP_h5/Model_ERK-LTPGbgC100CaC500cAMPC500-inter300

#Ca=1 uM and cAMP=.5 uM and Gbg=.1 uM
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Multiplepath/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter3.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Multiplepath/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter20.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Multiplepath/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter40.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Multiplepath/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter80.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 LTP_train/Multiplepath/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter300.xml LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500-inter300
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 5000000 -Dneurord.trials=5 LTP_train/Multiplepath/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter600.xml LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500-inter600
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 7500000 -Dneurord.trials=5 LTP_train/Multiplepath/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter1800.xml LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500-inter1800


####50% PP1
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/pp1_Ratio/LTP_50PP1/Model_ERK-stimd-GbgC100-cAMPC500-train4-inter3.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC500PP1R50-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/pp1_Ratio/LTP_50PP1/Model_ERK-stimd-GbgC100-cAMPC500-train4-inter20.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC500PP1R50-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/pp1_Ratio/LTP_50PP1/Model_ERK-stimd-GbgC100-cAMPC500-train4-inter40.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC500PP1R50-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/pp1_Ratio/LTP_50PP1/Model_ERK-stimd-GbgC100-cAMPC500-train4-inter80.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC500PP1R50-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/pp1_Ratio/LTP_50PP1/Model_ERK-stimd-GbgC100-cAMPC500-train4-inter300.xml LTP_h5/Model_ERK-LTPGbgC100cAMPC500PP1R50-inter300

java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/pp1_Ratio/LTP_50PP1/Model_ERK-stimd-C1000-train4-inter3.xml  LTP_h5/Model_ERK-LTPCaC1000PP1R50-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/pp1_Ratio/LTP_50PP1/Model_ERK-stimd-C1000-train4-inter20.xml  LTP_h5/Model_ERK-LTPCaC1000PP1R50-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/pp1_Ratio/LTP_50PP1/Model_ERK-stimd-C1000-train4-inter40.xml  LTP_h5/Model_ERK-LTPCaC1000PP1R50-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/pp1_Ratio/LTP_50PP1/Model_ERK-stimd-C1000-train4-inter80.xml  LTP_h5/Model_ERK-LTPCaC1000PP1R50-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/pp1_Ratio/LTP_50PP1/Model_ERK-stimd-C1000-train4-inter300.xml LTP_h5/Model_ERK-LTPCaC1000PP1R50-inter300

java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/pp1_Ratio/LTP_50PP1/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter3.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500PP1R50-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/pp1_Ratio/LTP_50PP1/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter20.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500PP1R50-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/pp1_Ratio/LTP_50PP1/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter40.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500PP1R50-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/pp1_Ratio/LTP_50PP1/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter80.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500PP1R50-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/pp1_Ratio/LTP_50PP1/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter300.xml LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500PP1R50-inter300
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 5000000 -Dneurord.trials=5 Robustness/pp1_Ratio/LTP_50PP1/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter600.xml LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500PP1R50-inter600
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 7500000 -Dneurord.trials=5 Robustness/pp1_Ratio/LTP_50PP1/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter1800.xml LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500PP1R50-inter1800

###oldCam
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/old-CamCa/Model_ERK-stimd-C1000-train4-inter3.xml  LTP_h5/Model_ERK-LTPCaC1000oldCam-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/old-CamCa/Model_ERK-stimd-C1000-train4-inter20.xml  LTP_h5/Model_ERK-LTPCaC1000oldCam-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/old-CamCa/Model_ERK-stimd-C1000-train4-inter40.xml  LTP_h5/Model_ERK-LTPCaC1000oldCam-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/old-CamCa/Model_ERK-stimd-C1000-train4-inter80.xml  LTP_h5/Model_ERK-LTPCaC1000oldCam-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/old-CamCa/Model_ERK-stimd-C1000-train4-inter300.xml LTP_h5/Model_ERK-LTPCaC1000oldCam-inter300

java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/old-CamCa/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter3.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500oldCam-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/old-CamCa/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter20.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500oldCam-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/old-CamCa/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter40.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500oldCam-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/old-CamCa/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter80.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500oldCam-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/old-CamCa/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter300.xml LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500oldCam-inter300
 

#block Ras
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRas_Rap/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter3-blockRas.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500blockRas-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRas_Rap/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter20-blockRas.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500blockRas-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRas_Rap/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter40-blockRas.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500blockRas-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRas_Rap/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter80-blockRas.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500blockRas-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRas_Rap/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter300-blockRas.xml LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500blockRas-inter300

java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRas_Rap/Model_ERK-stimd-GbgC100-cAMPC500-train4-inter3-blockRas.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC500blockRas-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRas_Rap/Model_ERK-stimd-GbgC100-cAMPC500-train4-inter20-blockRas.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC500blockRas-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRas_Rap/Model_ERK-stimd-GbgC100-cAMPC500-train4-inter40-blockRas.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC500blockRas-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRas_Rap/Model_ERK-stimd-GbgC100-cAMPC500-train4-inter80-blockRas.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC500blockRas-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRas_Rap/Model_ERK-stimd-GbgC100-cAMPC500-train4-inter300-blockRas.xml LTP_h5/Model_ERK-LTPGbgC100cAMPC500blockRas-inter300

#block Rap
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRas_Rap/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter3-blockRap1.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500blockRap1-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRas_Rap/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter20-blockRap1.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500blockRap1-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRas_Rap/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter40-blockRap1.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500blockRap1-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRas_Rap/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter80-blockRap1.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500blockRap1-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRas_Rap/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter300-blockRap1.xml LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500blockRap1-inter300

java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRas_Rap/Model_ERK-stimd-GbgC100-cAMPC500-train4-inter3-blockRap1.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC500blockRap1-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRas_Rap/Model_ERK-stimd-GbgC100-cAMPC500-train4-inter20-blockRap1.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC500blockRap1-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRas_Rap/Model_ERK-stimd-GbgC100-cAMPC500-train4-inter40-blockRap1.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC500blockRap1-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRas_Rap/Model_ERK-stimd-GbgC100-cAMPC500-train4-inter80-blockRap1.xml  LTP_h5/Model_ERK-LTPGbgC100cAMPC500blockRap1-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRas_Rap/Model_ERK-stimd-GbgC100-cAMPC500-train4-inter300-blockRap1.xml LTP_h5/Model_ERK-LTPGbgC100cAMPC500blockRap1-inter300

#block Raf1
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRaf1_bRaf/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter3-blockRaf1.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500blockRaf1-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRaf1_bRaf/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter20-blockRaf1.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500blockRaf1-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRaf1_bRaf/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter40-blockRaf1.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500blockRaf1-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRaf1_bRaf/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter80-blockRaf1.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500blockRaf1-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRaf1_bRaf/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter300-blockRaf1.xml LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500blockRaf1-inter300

#block bRaf
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRaf1_bRaf/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter3-blockbRaf.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500blockbRaf-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRaf1_bRaf/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter20-blockbRaf.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500blockbRaf-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRaf1_bRaf/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter40-blockbRaf.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500blockbRaf-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRaf1_bRaf/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter80-blockbRaf.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500blockbRaf-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/blockRaf1_bRaf/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter300-blockbRaf.xml LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500blockbRaf-inter300

#nodimer
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/nodimer/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter3.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500nodimer-inter3
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/nodimer/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter20.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500nodimer-inter20
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/nodimer/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter40.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500nodimer-inter40
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/nodimer/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter80.xml  LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500nodimer-inter80
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 2100000 -Dneurord.trials=5 Robustness/nodimer/Model_ERK-stimd-GbgC100-cAMPC500-CaC1000-train4-inter300.xml LTP_h5/Model_ERK-LTPGbgC100CaC1000cAMPC500nodimer-inter300
