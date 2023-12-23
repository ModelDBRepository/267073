#in python exec(open('path/to/file/robustness_anal.py')
##DO NOT PUT ANY SPACES NEXT TO THE COMMAS, DO NOT USE TABS
#find_filename is the specific file name that needed to be replaced or update initial concentration (here is the IC), change if needed 
#suffix_name is the specific tag name find in the files, 2 options given here, either random or set
#input_filename is the initial model filename, define as set of file


import glob
import sys
import robustness_function as rf
##############################################
random=0 #if change conc randomly
frange=100 #range for random
factor=1.1#write desire factor for set change
prog_path_name='/home/nadia/neurord-3.2.4-all-deps.jar' #change for specific program 
text='java -jar  '+prog_path_name+'   '+'-Dneurord.trials=5   '+'-t 2100000'#update for desire textline

mol_change={'ERK':['ERK'], 'MEK':['MEK'],'MKP1':['MKP1'],'PP2A':['PP2A'],'CRaf':['Raf1'],'BRaf':['bRaf'],'PDE2':['PDE2'],'PDE4':['PDE4'],'PKA':['PKA'],'Src':['Src'],'Cbl':['Cbl'],'CRKC3G':['CRKC3G'],'CamKII':['CK'],'PP1':['PP1'],'Cam':['Cam'],'Ng':['Ng'],'Grb2':['Grb2'],'Sos':['Sos'],'Shc':['Shc'],'RasGRF':['RasGRF'],'Epac':['Epac'],'Ras':['RasGDP'],'Rap1':['Rap1GDP'],'pmca':['pmca'],'ncx':['ncx'],'Calbin':['Calbin'],'FixBuff':['CB'],'rasGap':['rasGap'],'rapGap':['rap1Gap'],'SynGap':['SynGap']}


###################################################################################set up args#####

try:
    args = ARGS.split(",")
    print("ARGS =", ARGS, "commandline=", args)
    do_exit = False
except NameError: #NameError refers to an undefined variable (in this case ARGS)
    args = sys.argv[1:]
    print("commandline =", args)
    do_exit = True

try:
    data.close()
except Exception:
    pass



############################## change IC file randomly and print or set a specific factor ##########################

################################################################ main   ############################
#path
#PATH='/home/nadia/ERK/Experiment/simulation/Robustness/analysis/Random/'#'./'
IC_Path='/home/nadia/ERK/Experiment/Initialization/'
Model_Path='/home/nadia/ERK/Experiment/simulation/Robustness/analysis/'
#oPath='/home/nadia/ERK/Experiment/simulation/Robustness/analysis/set1.1/'


#args
find_filename=IC_Path+'IC_ERK_basald'#args[0].split('.')[0]#'IC
pattern_mod=Model_Path+'Model'+'*'+'inter*'+'*.xml'
input_filename=sorted(glob.glob(pattern_mod)) #set of files
replace_filename=[]

if random==1:
    suffix_name='random'
    rf.random_file(suffix_name,frange,find_filename,mol_change)
    output_Path='/home/nadia/ERK/Experiment/simulation/Robustness/analysis/Random/'
else:
    suffix_name='set'
    rf.set_file(suffix_name,find_filename,factor,mol_change)
    output_Path='/home/nadia/ERK/Experiment/simulation/Robustness/analysis/set'+str(factor)+'/'
   
pattern_model=output_Path+'IC'+'*'+suffix_name+'*.xml'
fileNames_model=sorted(glob.glob(pattern_model))
rf.modelrobust_file(fileNames_model,replace_filename,input_filename,find_filename)


pattern_batch=output_Path+'Model'+'*'+suffix_name+'*.xml'
fileNames_batch=sorted(glob.glob(pattern_batch))
rf.bat_file(text,fileNames_batch,suffix_name)

