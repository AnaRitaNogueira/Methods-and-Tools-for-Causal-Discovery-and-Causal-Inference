# Causal Discovery in cross-sectional data
The folder contains the R scripts for the example in section 3.1.4.

## Main files 

We have two main files:

* [pattern comparation.R](https://github.com/AnaRitaNogueira/Methods-and-Tools-for-Causal-Discovery-and-Causal-Inference/blob/main/3.%20Causal%20Discovery/3.1%20Finding%20causal%20relations%20in%20cross-sectional%20data/pattern%20comparation.R), which refers to the code to replicate the results provided in Figure 7. The file contains code examples for pcalg, bnlearn's PC, as well as the methods needed to perform a comparision between the methods. 
* [Tetrad.tet](https://github.com/AnaRitaNogueira/Methods-and-Tools-for-Causal-Discovery-and-Causal-Inference/blob/main/3.%20Causal%20Discovery/3.1%20Finding%20causal%20relations%20in%20cross-sectional%20data/Tetrad.tet), which refers to the process to implement Tetrad's PC.

## Auxiliary files
 We have one auxiliary file:
  * [DAG comparision methods.R](https://github.com/AnaRitaNogueira/Methods-and-Tools-for-Causal-Discovery-and-Causal-Inference/blob/main/3.%20Causal%20Discovery/3.1%20Finding%20causal%20relations%20in%20cross-sectional%20data/DAG%20comparision%20methods.R), which refers to the auxiliary methods to compare Bayesian networks in terms of patterns.


We also add here relevant links to common tools to create causal discovery models, if different techniques need to be tested. Finally, we provide a list of available cross-sectional datasets.


# Tools for cross-sectional data
The objective of this repository is to encapsulate several softwares used in causal discovery related tasks.

| Software | Author | Original Paper | Language | Source | Keywords |
| --- | --- | --- | --- | --- | --- |
| R-Causal | Center for Causal Discovery | NA | R | [Git Hub](https://github.com/bd2kccd/r-causal) | Graphical Models |
| Tetrad | Center for Causal Discovery | NA | Java | [Link](https://cloud.ccd.pitt.edu/nexus/content/repositories/releases/edu/cmu/tetrad-gui/) | Graphical Models |
| Py-Causal | Center for Causal Discovery | NA | Python | [Git Hub](https://github.com/bd2kccd/py-causal) | Graphical Models |
| Causal Command | Center for Causal Discovery | NA | Java | [Link](https://cloud.ccd.pitt.edu/nexus/content/repositories/releases/edu/pitt/dbmi/causal-cmd/0.2.1/causal-cmd-0.2.1-jar-with-dependencies.jar) | Graphical Models |
| CausalLift | NA | NA | R | [Git Hub](https://github.com/Minyus/causallift) | Uplift Modeling |
| CausalML | Huigang Chen, Totte Harinen, Jeong-Yoon Lee, Mike Yung, Zhenyu Zhao | [CausalML: Python Package for Causal Machine Learning](https://arxiv.org/abs/2002.11631) | 
| causalMGM (R) | Neha Abraham and Benos lab | [Learning mixed graphical models with separate sparsity parameters and stability-based model selection](https://bmcbioinformatics.biomedcentral.com/articles/10.1186/s12859-016-1039-0) | R | [Git Hub](https://github.com/benoslab/causalMGM#references) | NA |
| Causal decision tree| Jiuyong Li, Saisai Ma, Thuc Duy Le, Lin Liu and Jixue Liu | [Causal Decision Trees](https://ieeexplore.ieee.org/document/7600471/authors#authors) | Java | [Link](http://nugget.unisa.edu.au/jiuyong/weka-CDT-TKDEversion.7z) | Decision tree, Causal relationship, Potential out-come model, Partial association |
| CR-PA | Zhou Jin, Jiuyong Li, Lin Liu, Thuc Duy Le, Bingyu Sun and Rujing Wang | [Discovery of Causal Rules Using Partial Association](https://ieeexplore.ieee.org/document/6413892) | Java | [Link](http://nugget.unisa.edu.au/Causalbook/) | data mining; causality; partial association; causal rule |
| CR-CS | Jiuyong Li, Thuc Duy Le, Lin Liu, Jixue Liu, Zhou Jin and Bingyu Sun | [Mining Causal Association Rules](https://ieeexplore.ieee.org/document/6753910) | Java | [Link](http://nugget.unisa.edu.au/Causalbook/) | causal discovery; association rules; cohort study; odds ratio |
| pcalg| Markus Kalisch, Alain Hauser, Martin Maechler , Diego Colombo, Doris Entner, Patrik Hoyer, Antti Hyttinen, Jonas Peters, Nicoletta Andri, Emilija Perkovic, Preetam Nandy, Philipp Ruetimann, Daniel Stekhoven, Manuel Schuerch, Marco Eigenmann, Leonard Henckel, Joris Mooij | [More Causal Inference with Graphical Models in R Package pcalg](https://cran.r-project.org/web/packages/pcalg/vignettes/pcalgDoc.pdf) | R | [CRAN](https://cran.r-project.org/web/packages/pcalg/index.html) | IDA, PC, RFCI, FCI, GES, GIES, do-calculus, causality, graphical model,R |
| ParallelPC | Thuc Duy Le, Tao Hoang, Shu Hu, and Liang Zhang | [ParallelPC: an R package for efficient constraint based causal exploration](https://arxiv.org/abs/1510.03042)\&lt;br\&gt;[A Fast PC Algorithm for High Dimensional Causal Discovery with Multi-Core PCs](https://ieeexplore.ieee.org/document/7513439) | R | [CRAN](https://cran.r-project.org/web/packages/ParallelPC/index.html) | Causality discovery, Bayesian networks, Parallel computing, Constraint-based methodsm PC algorithm, Parallel computing, High dimensional dat |




# Public Available Data Sets

The data sets presented in the following table are publicly available in several online repositories, and have been used in several published works related to causal discovery.
| Paper | Data sets |
|---|---|
| [K. Yu, L. Liu, and J. Li, &quot;A unified view of causal and non-causal feature selection,&quot; _arXiv_, 2018.](https://arxiv.org/abs/1802.05844) | [Mushroom](https://archive.ics.uci.edu/ml/datasets/mushroom), [Kr-vs-kp](https://archive.ics.uci.edu/ml/datasets/Chess+(King-Rook+vs.+King-Pawn)), [Madelon](https://jundongl.github.io/scikit-feature/datasets.html), [Gisette](https://jundongl.github.io/scikit-feature/datasets.html.),[Spambase](https://archive.ics.uci.edu/ml/datasets/spambase), [Bankruptcy](https://archive.ics.uci.edu/ml/datasets/qualitative_bankruptcy), [Prostate](https://jundongl.github.io/scikit-feature/datasets.html), [Dexter](https://archive.ics.uci.edu/ml/datasets/Dexter), [Arcene](https://jundongl.github.io/scikit-feature/datasets.html), [Dorothea](https://archive.ics.uci.edu/ml/datasets/Dorothea), [Leukemia](https://jundongl.github.io/scikit-feature/datasets.html), [Breast cancer](https://archive.ics.uci.edu/ml/datasets/breast+cancer), [Connect-4](http://archive.ics.uci.edu/ml/datasets/connect-4), [Splice](https://archive.ics.uci.edu/ml/datasets/Molecular+Biology+(Splice-junction+Gene+Sequences)), [Waveform](https://archive.ics.uci.edu/ml/datasets/Waveform+Database+Generator+%28Version+1%29), [Lung](https://jundongl.github.io/scikit-feature/datasets.htmlg), [Lymph](https://jundongl.github.io/scikit-feature/datasets.html), [nci9](https://jundongl.github.io/scikit-feature/datasets.html), [Sido](http://www.causality.inf.ethz.ch/data/SIDO.html), [Thrombin](http://pages.cs.wisc.edu/~dpage/kddcup2001/) |
| [Nogueira A.R., Gama J., Ferreira C.A. (2020) Improving Prediction with Causal Probabilistic Variables. In: Berthold M., Feelders A., Krempl G. (eds) Advances in Intelligent Data Analysis XVIII. IDA 2020. Lecture Notes in Computer Science, vol 12080. Springer, Cham. https://doi.org/10.1007/978-3-030-44584-3\_30](https://link.springer.com/chapter/10.1007/978-3-030-44584-3_30#citeas) | [Breast cancer](https://archive.ics.uci.edu/ml/datasets/breast+cancer), [cervical](https://github.com/AnaRitaNogueira/Causality-Repository/tree/master/cervical), [corral](https://www.openml.org/d/40669), [earthquake](https://github.com/AnaRitaNogueira/Causality-Repository/tree/master/earthquake), [head injury](https://vincentarelbundock.github.io/Rdatasets/datasets.html), [lucas](http://www.causality.inf.ethz.ch/data/LUCAS.html), [medpar](https://vincentarelbundock.github.io/Rdatasets/articles/data.html), [mifem](https://vincentarelbundock.github.io/Rdatasets/articles/data.html), [qualitative bankruptcy](https://archive.ics.uci.edu/ml/datasets/Qualitative_Bankruptcy), [respiratory](http://vincentarelbundock.github.io/Rdatasets/articles/datcentre%20the%20study%20center,%20a%20factor%20with%20levels%201%20and%202.a.html), [survey](https://github.com/AnaRitaNogueira/Causality-Repository/tree/master/survey), [titanic](https://vincentarelbundock.github.io/Rdatasets/datasets.html), [xd6](https://vincentarelbundock.github.io/Rdatasets/datasets.html) |
| [Ruocheng Guo, Lu Cheng, Jundong Li, P. Richard Hahn, and Huan Liu. 2020. A Survey of Learning Causality with Data: Problems and Methods. ACM Comput. Surv. 53, 4, Article 75 (September 2020), 37 pages. DOI:https://doi.org/10.1145/3397269](https://dl.acm.org/doi/10.1145/3397269) | [Abalone](http://archive.ics.uci.edu/ml/datasets/Abalone), [IHDP](hhttps://github.com/AMLab-Amsterdam/CEVAE/tree/master/datasets/IHDP), [TWINS](https://github.com/AMLab-Amsterdam/CEVAE/tree/master/datasets/TWINS), [causal pairs](https://webdav.tuebingen.mpg.de/cause-effect/) |
[J. Li, S. Ma, T. Le, L. Liu and J. Liu, "Causal Decision Trees," in IEEE Transactions on Knowledge and Data Engineering, vol. 29, no. 2, pp. 257-271, 1 Feb. 2017, doi: 10.1109/TKDE.2016.2619350.](https://ieeexplore.ieee.org/document/7600471)|[CINA](http://www.causality.inf.ethz.ch/data/CINA.html) (also called Adult data set)|

*<sub>
<a name="myfootnote1.1">1</a>: "Use of the data is permitted for non-commercial research and education purposes provided you properly credit the data source"<br>
 <a name="myfootnote1.2">3</a>: "Use of the data is permitted for non-commercial research and education purposes provided do not redistribute the data (with or without modification)"
  <suv/>*

  
  # Other causal discovery data sets
  These data sets are identified in the various sources as causal discovery data sets. However, they are classified as causal discovery data sets in various sources.

 Data set |Source Location|
|---|---|
|Abscisic Acid Signaling Network Data Set|Discrete data|[UCI Repository](https://archive.ics.uci.edu/ml/datasets/Abscisic+Acid+Signaling+Network)|
|Gas Sensor Array Drift Dataset at Different Concentrations Data Set)<sup>[1](#myfootnote3.1)</sup>|[UCI Repository](https://archive.ics.uci.edu/ml/datasets/Gas+Sensor+Array+Drift+Dataset+at+Different+Concentrations)|
|REGED|[Causality Workbench](http://www.causality.inf.ethz.ch/data/REGED.html)|
|SECOM Data Set|[UCI Repository](https://archive.ics.uci.edu/ml/datasets/SECOM)|
|StoneFlakes Data Set|[UCI Repository](https://archive.ics.uci.edu/ml/datasets/StoneFlakes)|
|SIGNET|[Causality Workbench](www.causality.inf.ethz.ch/)|
|STEFI| [Causality Workbench](www.causality.inf.ethz.ch/)|
|MARTI|[Causality Workbanch](http://www.causality.inf.ethz.ch/data/MARTI.html)|
|Confused student EEG brainwave data | [Kaggle](https://www.kaggle.com/wanghaohan/confused-eeg?select=demographic_info.csv) |
|CausalML Package Example Dataset | [Kaggle](https://www.kaggle.com/vikasmalhotra08/causalml-package-example-dataset?select=ihdp_npci_4.csv) |
|Uplift Modeling , Marketing Campaign Data |  [Kaggle](https://www.kaggle.com/arashnic/uplift-modeling)|
|Loneliness and Social Connections |  [Kaggle](https://www.kaggle.com/arashnic/loneliness-and-social-connections?select=percent-of-men-and-women-using-social-media-platforms-in-the-us.csv) |
| CausaLM Datasets | [Kaggle](https://www.kaggle.com/amirfeder/causalm?select=topics_dev.csv) |
|Deaths related to the Northern Ireland conflict | [Kaggle](https://www.kaggle.com/cclayford/deaths-related-to-the-northern-ireland-conflict) |
|Proper-names Categories | [Kaggle](https://www.kaggle.com/vered1986/propernames-categories?select=dataset_full.csv)|
 |Uplift Modeling , Marketing Campaign Data| [Kaggle](https://www.kaggle.com/arashnic/uplift-modeling)|


*<sub>
<a name="myfootnote3.1">1</a>: "Citation of both papers is required:<br>
A Vergara, S Vembu, T Ayhan, M Ryan, M Homer, R Huerta. "Chemical gas sensor drift compensation using classifier ensembles." Sensors and Actuators B: Chemical 166 (2012): 320-329.;
I Rodriguez-Lujan, J Fonollosa, A Vergara, M Homer, R Huerta. "On the calibration of sensor arrays for pattern recognition using the minimal number of experiments." Chemometrics and Intelligent Laboratory Systems 130 (2014): 123-134."<br>
<a name="myfootnote3.2">2</a>: "You may use this data for scientific, non-commercial purposes, as long as you give credit to the owners when publishing any work based on this data. Please cite Blaiotta, Claudia. 'Learning generative socially-aware models of pedestrian motion.' IEEE Robotics and Automation Letters, 2019."
<sub/>*
