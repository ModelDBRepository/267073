
###linear vs non linear pathway activation in all single pathway, Ca, cAMP and Gbg
#### Amplitude and Duration ############


####cAMP
#100 nm 
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5    Single_pulse/cAMP/cAMP/Model_ERK-stimd-C100-d1.xml       Single_h5/Model_ERKcAMP-C100-d1

#200
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/cAMP/cAMP/Model_ERK-stimd-C200-d1.xml        Single_h5/Model_ERKcAMP-C200-d1

#500
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5    Single_pulse/cAMP/cAMP/Model_ERK-stimd-C500-d1.xml        Single_h5/Model_ERKcAMP-C500-d1
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5    Single_pulse/cAMP/cAMP/Model_ERK-stimd-C500-d4.xml        Single_h5/Model_ERKcAMP-C500-d4
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/cAMP/cAMP/Model_ERK-stimd-C500-d10.xml       Single_h5/Model_ERKcAMP-C500-d10
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5    Single_pulse/cAMP/cAMP/Model_ERK-stimd-C500-d30.xml       Single_h5/Model_ERKcAMP-C500-d30
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5    Single_pulse/cAMP/cAMP/Model_ERK-stimd-C500-d100.xml      Single_h5/Model_ERKcAMP-C500-d100

#1000
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5    Single_pulse/cAMP/cAMP/Model_ERK-stimd-C1000-d1.xml       Single_h5/Model_ERKcAMP-C1000-d1

#1500
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/cAMP/cAMP/Model_ERK-stimd-C1500-d1.xml      Single_h5/Model_ERKcAMP-C1500-d1

#2000
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5    Single_pulse/cAMP/cAMP/Model_ERK-stimd-C2000-d1.xml      Single_h5/Model_ERKcAMP-C2000-d1

###knockout cAMP
#cAMP= 500 uM for 100 and 30 sec; cAMP has 2 pathways, either direct route epac or indirect PKA, what is the contribition of each?   
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5    Single_pulse/cAMP/Knockout/Model_ERK-blockEpacRap-C500-d100-stim.xml Knockout_h5/Model_ERK-BEpacRap100
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/cAMP/Knockout/Model_ERK-blockEpacRap-C500-d30-stim.xml  Knockout_h5/Model_ERK-BEpacRap30

java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/cAMP/Knockout/Model_ERK-blockPKARap-C500-d100-stim.xml Knockout_h5/Model_ERK-BPKARap100
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/cAMP/Knockout/Model_ERK-blockPKARap-C500-d30-stim.xml  Knockout_h5/Model_ERK-BPKARap30

####Gbg
#5
#java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5  Single_pulse/Gbg/Model_ERK-stimd-C5-d1.xml      Single_h5/Model_ERKGbg-C5-d1

#30
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Gbg/Model_ERK-stimd-C30-d1.xml      Single_h5/Model_ERKGbg-C30-d1

#100
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Gbg/Model_ERK-stimd-C100-d1.xml       Single_h5/Model_ERKGbg-C100-d1
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Gbg/Model_ERK-stimd-C100-d4.xml       Single_h5/Model_ERKGbg-C100-d4
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Gbg/Model_ERK-stimd-C100-d10.xml       Single_h5/Model_ERKGbg-C100-d10
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Gbg/Model_ERK-stimd-C100-d30.xml       Single_h5/Model_ERKGbg-C100-d30
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Gbg/Model_ERK-stimd-C100-d100.xml       Single_h5/Model_ERKGbg-C100-d100

#500
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Gbg/Model_ERK-stimd-C500-d1.xml       Single_h5/Model_ERKGbg-C500-d1

#1000
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Gbg/Model_ERK-stimd-C1000-d1.xml       Single_h5/Model_ERKGbg-C1000-d1

#3000
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5   Single_pulse/Gbg/Model_ERK-stimd-C3000-d1.xml       Single_h5/Model_ERKGbg-C3000-d1

#10000
java -jar /home/nadia/neurord-3.2.4-all-deps.jar -t 1200000 -Dneurord.trials=5  Single_pulse/Gbg/Model_ERK-stimd-C10000-d1.xml       Single_h5/Model_ERKGbg-C10000-d1

