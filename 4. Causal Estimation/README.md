The files provided here are for replictaing results in example 4.4.

We also add here relevant links to common tools to estimate causal effects.
These tools are devided depending on the assumptions we can safely make.

# Tools for Causal Estimation


## Causal Estimation when unconfoundedness holds

| Software | Author | Original Paper | Language | Source | Keywords |
| --- | --- | --- | --- | --- | --- |
| R-Causal | Center for Causal Discovery | NA | R | [Git Hub](https://github.com/bd2kccd/r-causal) | Graphical Models |
| Tetrad | Center for Causal Discovery | NA | Java | [Link](https://cloud.ccd.pitt.edu/nexus/content/repositories/releases/edu/cmu/tetrad-gui/) | Graphical Models |
| Py-Causal | Center for Causal Discovery | NA | Python | [Git Hub](https://github.com/bd2kccd/py-causal) | Graphical Models |
| Causal Command | Center for Causal Discovery | NA | Java | [Link](https://cloud.ccd.pitt.edu/nexus/content/repositories/releases/edu/pitt/dbmi/causal-cmd/0.2.1/causal-cmd-0.2.1-jar-with-dependencies.jar) | Graphical Models |
| CausalLift | NA | NA | R | [Git Hub](https://github.com/Minyus/causallift) | Uplift Modeling |
| CausalML | Huigang Chen, Totte Harinen, Jeong-Yoon Lee, Mike Yung, Zhenyu Zhao | [CausalML: Python Package for Causal Machine Learning](https://arxiv.org/abs/2002.11631) | Python | [Git Hub](https://github.com/uber/causalml) | Uplift tree/random forestsMeta-learner |
| DoWhy | Amit Sharma, Emre Kiciman | [DoWhy: An End-to-End Library for Causal Inference](https://arxiv.org/abs/2011.04216) | Python | [Git Hub](https://github.com/Microsoft/dowhy) | Graphical Models, Back-door criterion,Front-door criterion |
| CausalTree | Susan Athey, Guido Imbens | [Recursive Partitioning for Heterogeneous Causal Effects](https://arxiv.org/abs/1504.01132) | R | [Git Hub](https://github.com/susanathey/causalTree) | Causal tree, regression models |
| Causality | Adam Kelleher | NA | Python | [Git Hub](https://github.com/akelleh/causality) | DAG Inference, Causal Effects, Nonparametric Effects Estimation |
| Causal Inference | Laurence Wong | NA | Python | [Git Hub](https://github.com/laurencium/causalinference) | propensity score |
| causalMGM (R) | Neha Abraham and Benos lab | [Learning mixed graphical models with separate sparsity parameters and stability-based model selection](https://bmcbioinformatics.biomedcentral.com/articles/10.1186/s12859-016-1039-0) | R | [Git Hub](https://github.com/benoslab/causalMGM#references) | NA |
| Causal decision tree| Jiuyong Li, Saisai Ma, Thuc Duy Le, Lin Liu and Jixue Liu | [Causal Decision Trees](https://ieeexplore.ieee.org/document/7600471/authors#authors) | Java | [Link](http://nugget.unisa.edu.au/jiuyong/weka-CDT-TKDEversion.7z) | Decision tree, Causal relationship, Potential out-come model, Partial association |
| CR-PA | Zhou Jin, Jiuyong Li, Lin Liu, Thuc Duy Le, Bingyu Sun and Rujing Wang | [Discovery of Causal Rules Using Partial Association](https://ieeexplore.ieee.org/document/6413892) | Java | [Link](http://nugget.unisa.edu.au/Causalbook/) | data mining; causality; partial association; causal rule |
| CR-CS | Jiuyong Li, Thuc Duy Le, Lin Liu, Jixue Liu, Zhou Jin and Bingyu Sun | [Mining Causal Association Rules](https://ieeexplore.ieee.org/document/6753910) | Java | [Link](http://nugget.unisa.edu.au/Causalbook/) | causal discovery; association rules; cohort study; odds ratio |
| pcalg| Markus Kalisch, Alain Hauser, Martin Maechler , Diego Colombo, Doris Entner, Patrik Hoyer, Antti Hyttinen, Jonas Peters, Nicoletta Andri, Emilija Perkovic, Preetam Nandy, Philipp Ruetimann, Daniel Stekhoven, Manuel Schuerch, Marco Eigenmann, Leonard Henckel, Joris Mooij | [More Causal Inference with Graphical Models in R Package pcalg](https://cran.r-project.org/web/packages/pcalg/vignettes/pcalgDoc.pdf) | R | [CRAN](https://cran.r-project.org/web/packages/pcalg/index.html) | IDA, PC, RFCI, FCI, GES, GIES, do-calculus, causality, graphical model,R |
| ParallelPC | Thuc Duy Le, Tao Hoang, Shu Hu, and Liang Zhang | [ParallelPC: an R package for efficient constraint based causal exploration](https://arxiv.org/abs/1510.03042)\&lt;br\&gt;[A Fast PC Algorithm for High Dimensional Causal Discovery with Multi-Core PCs](https://ieeexplore.ieee.org/document/7513439) | R | [CRAN](https://cran.r-project.org/web/packages/ParallelPC/index.html) | Causality discovery, Bayesian networks, Parallel computing, Constraint-based methodsm PC algorithm, Parallel computing, High dimensional dat |
| causaleffect | Santtu Tikka | [Simplifying Probabilistic Expressions in Causal Inference](https://cran.r-project.org/web/packages/causaleffect/vignettes/simplification.pdf)[Identifying Causal Effects with the R Package causaleffect](https://cran.r-project.org/web/packages/causaleffect/vignettes/causaleffect.pdf) | R | [CRAN](https://cran.r-project.org/web/packages/causaleffect/index.html) | simplification, probabilistic expression, causal inference, graphical model,graph theory, DAG, do-calculus, causality, causal model, identifiability, graph, C-component,hedge, d-separation |
|network-deconfounder-wsdm20| Ruocheng Guo, Jundong Li and Huan Liu| [Learning Individual Causal Effects from NetworkedObservational Data](https://arxiv.org/pdf/1906.03485.pdf)| Python| [Git Hub](https://github.com/rguo12/network-deconfounder-wsdm20)|Causal networks;Networks;Online social networks;Human-centered computing;Social network analysis|
|[DAME-FLAME](https://almost-matching-exactly.github.io/DAME-FLAME-Python-Package/)| Yameng Liu, Aw Dieng, Sudeepa Roy, Cynthia Rudin, Alexander Volfovsky| [Interpretable Almost Matching Exactly for Causal Inference](https://arxiv.org/pdf/1806.06802.pdf)| Python | [PyPI](https://pypi.org/project/dame-flame/)||
|[R-FLAME](https://almost-matching-exactly.github.io/R-FLAME/)| Yameng Liu, Aw Dieng, Sudeepa Roy, Cynthia Rudin, Alexander Volfovsky| [Interpretable Almost Matching Exactly for Causal Inference](https://arxiv.org/pdf/1806.06802.pdf)| R | [GitHub](https://github.com/almost-matching-exactly/R-FLAME)||
|[MALTS](https://almost-matching-exactly.github.io/MALTS/)| Harsh Parikh, Cynthia Rudin and Alexander Volfovsky | [MALTS: Matching After Learning to Stretch](https://arxiv.org/pdf/1811.07415.pdf) | Python | [GitHub](https://github.com/almost-matching-exactly/MALTS)| causal inference · matching · nearest neighbor · distance metric learning |



## Causal Discovery time-series data

| Software | Author | Original Paper | Language | Original Source | Keywords |
| --- | --- | --- | --- | --- | --- |
| Amortized Causal Discovery | Sindy Löwe, David Madras, Richard Zemel, Max Welling | [Amortized Causal Discovery: Learning to Infer Causal Graphs from Time-Series Data](https://arxiv.org/abs/2006.10833)| Python | [Git Hub](https://github.com/loeweX/AmortizedCausalDiscovery) | NA |
| CausalImpact | Kay H. Brodersen Fabian Gallusser Jim Koehler Nicolas Remy Steven L. Scott | [Inferring causal impact using Bayesian structural time-series models](https://research.google/pubs/pub41854/) | R | [Git Hub](https://github.com/google/CausalImpact) | Causal inference, counterfactual, synthetic control, observa-tional, difference in differences, econometrics, advertising, market research |
| BayesianCausalInference | Bo Ning, Subhashis Ghosal, Jewell Thomas | [Bayesian method for causal inference in spatially-correlated multivariate time series](https://arxiv.org/abs/1801.06282) | R | [Git Hub](https://github.com/Bo-Ning/Bayesian-multivariate-time-series-causal-inference) | Advertising campaign, Bayesian variable selection, causal inference,graphical model, stationarity, time serie |
| TCDF: Temporal Causal Discovery Framework | Meike Nauta, Doina Bucur and Christin Seifert | [Causal Discovery with Attention-Based Convolutional Neural Networks](https://www.mdpi.com/2504-4990/1/1/19) | Python | [Git Hub](https://github.com/M-Nauta/TCDF) | convolutional neural network; time series; causal discovery; attention; machine learning |
|Tigramite| Jakob Runge |NA | Python | [Git Hub](https://github.com/jakobrunge/tigramite) | Causal discovery; time series|


## Other Tools

| Software | Author | Language |
| --- | --- | --- |
| [Causal Discovery Toolbox](https://fentechsolutions.github.io/CausalDiscoveryToolbox/html/index.html) | Diviyan Kalainathan, Olivier Goudet | Python |
| [Causal Web](https://cloud.ccd.pitt.edu/ccd-web) | Center for Causal Discovery | NA |
| [CausalMGM](http://causalmgm.org/) | Neha Abraham and Benos lab | NA |

