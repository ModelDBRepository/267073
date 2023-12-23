
###CALCIUM AND CAMP PATHWAs: Can cAMp and Calcium substitute for one another, do the combine linearly or nonlinearly 

#Ca=.5 uM and cAMP=.5 uM, different duration, cAMP favors time and Ca need threshold to be sustained 
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-CacAMP-C500Ca-C500cAMP-d1.xml  MPath_h5/Model_ERK-MPathCaC500cAMPC500-d1
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-CacAMP-C500Ca-C500cAMP-d4.xml  MPath_h5/Model_ERK-MPathCaC500cAMPC500-d4
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-CacAMP-C500Ca-C500cAMP-d10.xml  MPath_h5/Model_ERK-MPathCaC500cAMPC500-d10
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-CacAMP-C500Ca-C500cAMP-d30.xml  MPath_h5/Model_ERK-MPathCaC500cAMPC500-d30
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-CacAMP-C500Ca-C500cAMP-d100.xml  MPath_h5/Model_ERK-MPathCaC500cAMPC500-d100


#different amplitude for 1 sec duration, cAMP favors time and Ca need threshold to be sustained
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-CacAMP-C200Ca-C200cAMP-d1.xml    MPath_h5/Model_ERK-MPathCaC200cAMPC200-d1
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-CacAMP-C1000Ca-C1000cAMP-d1.xml  MPath_h5/Model_ERK-MPathCaC1000cAMPC1000-d1
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-CacAMP-C1500Ca-C1500cAMP-d1.xml  MPath_h5/Model_ERK-MPathCaC1500cAMPC1500-d1
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-CacAMP-C2000Ca-C2000cAMP-d1.xml  MPath_h5/Model_ERK-MPathCaC2000cAMPC2000-d1


###cAMP and Gbg: do they produce sub linear response (competition between PKA and Gbg?) both favors duration 
#Gbg=.1 uM and cAMP=.5 uM, different duration, cAMP favors time and Ca need threshold to be sustained 
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-cAMPGbg-C500cAMP-GbgC100-d1.xml  MPath_h5/Model_ERK-MPathcAMPC500GbgC100-d1
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-cAMPGbg-C500cAMP-GbgC100-d4.xml  MPath_h5/Model_ERK-MPathcAMPC500GbgC100-d4
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-cAMPGbg-C500cAMP-GbgC100-d10.xml  MPath_h5/Model_ERK-MPathcAMPC500GbgC100-d10
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-cAMPGbg-C500cAMP-GbgC100-d30.xml  MPath_h5/Model_ERK-MPathcAMPC500GbgC100-d30
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-cAMPGbg-C500cAMP-GbgC100-d100.xml  MPath_h5/Model_ERK-MPathcAMPC500GbgC100-d100


###Ca, cAMP and Gbg: does Gbg contribute when both calcium and cAMP present?
#Ca=.5 uM and cAMP=.5 uM,Gbg=.1 uM different duration, cAMP favors time and Ca need threshold to be sustained 
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-CacAMPGbg-C500Ca-C500cAMP-GbgC100-d1.xml  MPath_h5/Model_ERK-MPathCaC500cAMPC500GbgC100-d1
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-CacAMPGbg-C500Ca-C500cAMP-GbgC100-d4.xml  MPath_h5/Model_ERK-MPathCaC500cAMPC500GbgC100-d4
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-CacAMPGbg-C500Ca-C500cAMP-GbgC100-d10.xml  MPath_h5/Model_ERK-MPathCaC500cAMPC500GbgC100-d10
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-CacAMPGbg-C500Ca-C500cAMP-GbgC100-d30.xml  MPath_h5/Model_ERK-MPathCaC500cAMPC500GbgC100-d30
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-CacAMPGbg-C500Ca-C500cAMP-GbgC100-d100.xml  MPath_h5/Model_ERK-MPathCaC500cAMPC500GbgC100-d100




#Ca=1 uM and cAMP=.5 uM,Gbg=.1 uM different duration, cAMP favors time and Ca need threshold to be sustained
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-CacAMPGbg-C1000Ca-C500cAMP-GbgC100-d1.xml  MPath_h5/Model_ERK-MPathCaC1000cAMPC500GbgC100-d1
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-CacAMPGbg-C1000Ca-C500cAMP-GbgC100-d4.xml  MPath_h5/Model_ERK-MPathCaC1000cAMPC500GbgC100-d4
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-CacAMPGbg-C1000Ca-C500cAMP-GbgC100-d10.xml  MPath_h5/Model_ERK-MPathCaC1000cAMPC500GbgC100-d10
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-CacAMPGbg-C1000Ca-C500cAMP-GbgC100-d30.xml  MPath_h5/Model_ERK-MPathCaC1000cAMPC500GbgC100-d30
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-CacAMPGbg-C1000Ca-C500cAMP-GbgC100-d100.xml  MPath_h5/Model_ERK-MPathCaC1000cAMPC500GbgC100-d100


##ADDITIONAL STIM

#Rumbaugh test for syngap 
java -jar /home/nadia/neurord-3.2.4-all-deps.jar  -Dneurord.trials=5    Single_pulse/Ca/Knockout/Model_ERK-blockKOSynGap-control.xml     Knockout_h5/Model_ERK-BKOSynGap-stimcontol
java -jar /home/nadia/neurord-3.2.4-all-deps.jar  -Dneurord.trials=5    Single_pulse/Ca/Knockout/Model_ERK-blockpSynGap-C500-d100-stim.xml     Knockout_h5/Model_ERK-BKOSynGap-stimC500d100

#overlapping vs matching timeframe 
#Gbg=.1 uM and cAMP=.5 uM, different duration, cAMP favors time and Ca need threshold to be sustained ....BEPACAMP 
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-cAMPGbg-C500cAMP-GbgC100-d1BEpacAMP.xml  MPath_h5/Model_ERK-MPathcAMPC500GbgC100-d1-BEpacAMP
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-cAMPGbg-C500cAMP-GbgC100-d4BEpacAMP.xml  MPath_h5/Model_ERK-MPathcAMPC500GbgC100-d4-BEpacAMP
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-cAMPGbg-C500cAMP-GbgC100-d10BEpacAMP.xml  MPath_h5/Model_ERK-MPathcAMPC500GbgC100-d10-BEpacAMP
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-cAMPGbg-C500cAMP-GbgC100-d30BEpacAMP.xml  MPath_h5/Model_ERK-MPathcAMPC500GbgC100-d30-BEpacAMP
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5 Single_pulse/multiplePath/Model_ERK-stimd-cAMPGbg-C500cAMP-GbgC100-d100BEpacAMP.xml  MPath_h5/Model_ERK-MPathcAMPC500GbgC100-d100-BEpacAMP



