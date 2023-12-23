Python programs for analysis of linearity and robustness:

1. Model output was processed using the python programs in https://github.com/neurord/NeuroRDanal/**nrdh5_analV2.py** to produce area under the curve. 

2. **tranpose_data.py or transpose_dataLTP**: get data in the correct file format to be used in  stat_anal

3. **stat_anal.py**:curve fitting and ANOVA statistical analysis to determine 
	* Do ERK pathways combine linearly
	* Does ppERK increase linearly with concentration or duration
	
4. **mol_analysis.py**: calculate change of molecule concentration used for the robustness simulations.  Input is the .xml file

5. **factor_analysis.py**: read in and calculate changes in ppERK AUC for individual molecules changes.  Input is the output from nrdh5_analV2.py

6. **random_analysis.py**: read in and calculate changes in ppERK AUC from sets of molecules changes. Input is the output from nrdh5_analV2.py  

7. **RandomForestRegression.py**: Main program to analyze results of robustness simulations
	* First, create file with the change in molcule concentration used for the simulations (mol_analysis.py)
	* Second, create file with change in ppERK AUC, either using factor_analysis.py (for single molecule changes) or random_analysis.py (for changes to sets of molecules).
	* Third, run RandomForest Regression.py.  This
		* reads in npz files created by mol_analysis.py, factor_analysis.py and random_analysis.py, 
		* analyzes correlation between different measures of changes to ppERK AUC
		* does linear regession to determine which molecule changes best predict the change in ppERK AUC 
		* does cluster analysis to determine if molecules changes change predict change to best ITI
		* does the random forest regression to determine which molecule changes best predict the change in ppERK AUC 
		
8. **RandomForestUtils.py**: Functions used by RandomForestRegression.py
