
###linear vs non linear pathway activation in all single pathway, Ca, cAMP and Gbg
#### Amplitude and Duration ############
####Ca

#200
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Ca/Ca/Model_ERK-stimd-C200-d1.xml        Single_h5/Model_ERKCa-C200-d1&

#300
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Ca/Ca/Model_ERK-stimd-C300-d1.xml        Single_h5/Model_ERKCa-C300-d1


#500
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Ca/Ca/Model_ERK-stimd-C500-d1.xml        Single_h5/Model_ERKCa-C500-d1
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5  Single_pulse/Ca/Ca/Model_ERK-stimd-C500-d2.xml        Single_h5/Model_ERKCa-C500-d2
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Ca/Ca/Model_ERK-stimd-C500-d4.xml        Single_h5/Model_ERKCa-C500-d4
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Ca/Ca/Model_ERK-stimd-C500-d5.xml        Single_h5/Model_ERKCa-C500-d5
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Ca/Ca/Model_ERK-stimd-C500-d6.xml        Single_h5/Model_ERKCa-C500-d6
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Ca/Ca/Model_ERK-stimd-C500-d8.xml        Single_h5/Model_ERKCa-C500-d8
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Ca/Ca/Model_ERK-stimd-C500-d10.xml       Single_h5/Model_ERKCa-C500-d10
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Ca/Ca/Model_ERK-stimd-C500-d30.xml       Single_h5/Model_ERKCa-C500-d30&
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Ca/Ca/Model_ERK-stimd-C500-d60.xml       Single_h5/Model_ERKCa-C500-d60
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Ca/Ca/Model_ERK-stimd-C500-d100.xml      Single_h5/Model_ERKCa-C500-d100

#1000
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Ca/Ca/Model_ERK-stimd-C1000-d1.xml       Single_h5/Model_ERKCa-C1000-d1
##java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Ca/Ca/Model_ERK-stimd-C1000-d4.xml       Single_h5/Model_ERKCa-C1000-d4
##java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Ca/Ca/Model_ERK-stimd-C1000-d100.xml     Single_h5/Model_ERKCa-C1000-d100


#1500
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5  Single_pulse/Ca/Ca/Model_ERK-stimd-C1500-d1.xml       Single_h5/Model_ERKCa-C1500-d1


#2000
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Ca/Ca/Model_ERK-stimd-C2000-d1.xml       Single_h5/Model_ERKCa-C2000-d1
##java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Ca/Ca/Model_ERK-stimd-C2000-d4.xml       Single_h5/Model_ERKCa-C2000-d4
##java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Ca/Ca/Model_ERK-stimd-C2000-d100.xml     Single_h5/Model_ERKCa-C2000-d100


#5000
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Ca/Ca/Model_ERK-stimd-C5000-d1.xml       Single_h5/Model_ERKCa-C5000-d1

###Knockout experiment: what is the role of each subpathway? what is the contribution of different molecules or step in calcium pathway? 

########## STIM ########
#Ca= 2 uM for 1 sec; calcium has 2 pathways, either CamKII or RasGRF, what is the contribition of each?   
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5    Single_pulse/Ca/Knockout/Model_ERK-blockCK-C2000-d1-stim.xml          Knockout_h5/Model_ERK-BCK-stimC2000d1
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5    Single_pulse/Ca/Knockout/Model_ERK-blockCK-auto-C2000-d1-stim.xml     Knockout_h5/Model_ERK-BCKauto-stimC2000d1
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5    Single_pulse/Ca/Knockout/Model_ERK-blockpSynGap-C2000-d1-stim.xml     Knockout_h5/Model_ERK-BpSynGap-stimC2000d1
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5    Single_pulse/Ca/Knockout/Model_ERK-blockpSynGapKcat-C2000-d1-stim.xml Knockout_h5/Model_ERK-BpSynGapKcat-stimC2000d1
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5    Single_pulse/Ca/Knockout/Model_ERK-blockSynden-C2000-d1-stim.xml      Knockout_h5/Model_ERK-BSynden-stimC2000d1


#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5    Single_pulse/Ca/Knockout/Model_ERK-blockCK-auto-C500-d1.xml Knockout_h5/Model_ERK-BCKauto-stimC500d1
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5    Single_pulse/Ca/Knockout/Model_ERK-blockCK-auto-C500-d4.xml Knockout_h5/Model_ERK-BCKauto-stimC500d4
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Ca/Knockout/Model_ERK-blockCK-auto-C500-d10.xml Knockout_h5/Model_ERK-BCKauto-stimC500d10
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5    Single_pulse/Ca/Knockout/Model_ERK-blockCK-auto-C500-d30.xml Knockout_h5/Model_ERK-BCKauto-stimC500d30
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5    Single_pulse/Ca/Knockout/Model_ERK-blockCK-auto-C500-d100.xml Knockout_h5/Model_ERK-BCKauto-stimC500d100

#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5    Single_pulse/Ca/Knockout/Model_ERK-blockCK-auto-C1000-d1.xml Knockout_h5/Model_ERK-BCKauto-stimC1000d1
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5    Single_pulse/Ca/Knockout/Model_ERK-blockCK-auto-C1500-d1.xml Knockout_h5/Model_ERK-BCKauto-stimC1500d1
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5    Single_pulse/Ca/Knockout/Model_ERK-blockCK-auto-C2000-d1.xml Knockout_h5/Model_ERK-BCKauto-stimC2000d1
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5    Single_pulse/Ca/Knockout/Model_ERK-blockCK-auto-C5000-d1.xml Knockout_h5/Model_ERK-BCKauto-stimC5000d1
