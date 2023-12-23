===========
**Model files for simulating the ERK signaling pathway during L_LTP induction in the hippocampus**
===========

ERK signaling pathway include:

1. Calcium:

   * Calcium activation of RasGRF followed by RasGTP production
   * CamKII modulation of SynGap followed by increase RasGTP and Rap1GTP lifetime
   
2. cAMP

   * cAMP activation of Epac activation followed Rap1GTP
   * PKA phorylation of Src family kinase leading to Rap1GTP production
   * Gβγ recruitment of Src family kinase followed by activation of RasGTP
   
.. figure:: https://github.com/neurord/ERK/blob/master/ERK_diagram.jpg
    :alt: ERK signaling pathwway diagram
    :figclass: align-center 
    
    **Figure: Schematic representation of signaling pathways activating ERK**
    
The repository contains several types of simulation files (in Experiment) and python scripts for analysis of output (in Analysis). 
All output files were first processed using nrdh5_analv2 in https://github.com/neurord/NeuroRDanal


Model_ERK-stimdxxx.xml contain the entire model specification, which combines Reaction file (*Rxn_ERK_xxx.xml*), Morphology file (*Morph.xml*), initial conditions file (*IC_ERK_xxx.xml*), output file (*Out_ERK_xxx.xml*) and stimulation (*Stim_ERK_xxx.xml*).  To run simulations, use NeuroRDv3.2.4 (https://github.com/neurord/stochdiff/releases/tag/v3.2.4) as follows:

``java -jar /path/to/neurord-3.2.4-all-deps.jar  /path/to/Model_ERK-stimd_xxx.xml``

-------------
**Subfolders**
-------------
1. **Experiment/Initialization/**:

	* To match the in *vitro* data on basal concentration, simulate the model for about an hour to obtain steady-state concentrations for all molecules
	* To copy basal quantities of molecules, run:
         ``ARGS="IC_filename,h5_filename ,sstart ssend"`` then ``execfile('path/to/file/UpdateIC_basal.py')``

2. **Experiment/simulation/**:

	* Reaction files and Morphology files used in all simulation.
	* IC files used in all simulations except robustness: random and factor simulations (set of molecules was changed by + or - 10%)

3. **Experiment/simulation/Single_pulse**:simulation of single pathways and combination of pathways using single pulses of either different durations (same amplitude) or different amplitudes (same duration)

	* *Model_ERK-stimd-xxx.xml* and *Stim_ERKxxx.xml* for each pathway 
	* In filename, C* indicate concentration, d* indicates duration
				    
4. **Experiment/simulation/LTP_train/**: simulation of single pathways and combination of pathways using 4 train of 100 Hz with different inter-train intervals (L_LTP stimulation protocol)

	*Model_ERK-stimd-xxx.xml* and *Stim_ERKxxx.xml* for each pathway

5. **Experiment/simulation/LFS_ISO_HFS/**: Simulation of response to LTP protocols that use isoproteronol (ISO) plus electrical stimulation to release glutamate. *Model_ERK-stimd-.xml* and *Stim_ERK_xxx.xml* Only ISO+1 train and ISO+5 hz produce LTP

	- ISO 
	- 1 train of 100 Hz
	- 3 min of 5 Hz
	- ISO+1 train
	- ISO+5 Hz
	
	cAMP and calcium inputs are derived from simulation of a published model (*Jȩdrzejewska-Szmek, J., Luczak, V., Abel, T., Blackwell, K.T., 2017. β-adrenergic signaling broadly contributes to LTP induction. PLOS Computational Biology 13, e1005657.*) 

6. **Experiment/simulation/Robustness/**:simulation to ensure the robustness of results to variation in parameter values

	* *Model_ERK-stimd-xxx.xml* and *Stim_ERK_xxx.xml* and *IC_ERK_xxx.xml* (Experiment/simulation/Robustness/analysis) modify rate constants or molecule quantity to assess effect on ERK
	* The files in Experiment/simulation/Robustness/analysis were generated using robustness_anal.py which uses robustness_function.py

7. **Experiment/Analysis/**:

	python files for statistical analysis of robustness simulations and linearity
