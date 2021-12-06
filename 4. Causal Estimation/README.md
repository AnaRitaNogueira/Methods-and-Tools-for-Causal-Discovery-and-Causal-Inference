# Causal Estimation
The folder contains the R scripts for the example in section 4.4.

## Main files 


We have two main files:

* [running_example.R](https://github.com/AnaRitaNogueira/Methods-and-Tools-for-Causal-Discovery-and-Causal-Inference/blob/main/4.%20Causal%20Estimation/running_example.R), which refers to the code to replicate the results provided in Table 14. The file contains code examples for OLS linear regression, exact (one to one) matching estimator, full matching, stabilized IPW and doubly robust AIPW. 
* [running_small.R](https://github.com/AnaRitaNogueira/Methods-and-Tools-for-Causal-Discovery-and-Causal-Inference/blob/main/4.%20Causal%20Estimation/running_small.R), which was used to compute timing of each of the different methods.

CSV files with results for each run are also provided.

It is worth noticing that these methods allow to retrieve the causal effect under the **unconfoundedness assumption**, which we assume it is satisfied, as we know how the data are generated.

We also add here relevant links to common tools to estimate causal effects, if different techniques need to be tested.

## Tools for Causal Estimation


| Software | Authors | Paper | Language | Source | Brief Description |
| -------- | ------- | ----- | -------- | ------ | ----------------- |
| **DoWhy** | Amit Sharma, Emre Kiciman | [DoWhy: An End-to-End Library for Causal Inference](https://arxiv.org/abs/2011.04216) | Python | [Git Hub](https://github.com/Microsoft/dowhy) | General purpose library, several methods are available. |
| **CausalML** | Huigang Chen, Totte Harinen, Jeong-Yoon Lee, Mike Yung, Zhenyu Zhao | [CausalML: Python Package for Causal Machine Learning](https://arxiv.org/abs/2002.11631) | Python | [Git Hub](https://github.com/uber/causalml) | It implements more modern approaches exploiting Machine Learning (ML) techniques. |
| **EconML** | Keith Battocchi, Eleanor Dillon, Maggie Hei, Greg Lewis, Paul Oka, Miruna Oprescu, Vasilis Syrgkanis | [A Python Package for ML-Based Heterogeneous Treatment Effects Estimation](https://cpb-us-w2.wpmucdn.com/sites.coecis.cornell.edu/dist/a/238/files/2019/12/Id_112_final.pdf) | Python | [GitHub](https://github.com/microsoft/EconML) | It implements more modern approaches exploiting ML techniques. It can be used under the general framework of DoWhy. |
| **Matching** | Jasjeet S. Sekhon | [Multivariate and Propensity Score Matching Software with Automated Balance Optimization: The Matching package for R](https://www.jstatsoft.org/article/view/v042i07) | R |  [Documentation](https://cran.r-project.org/web/packages/Matching) | Matching techniques. |
| **MatchIT** | Daniel Ho, Kosuke Imai, Gary King, Elizabeth A. Stuart | [MatchIt: Nonparametric Preprocessing for Parametric Causal Inference](https://www.jstatsoft.org/article/view/v042i08) | R | [GitHub](https://github.com/kosukeimai/MatchIt) | Matching techniques.|
| **R-FLAME** | Vittorio Orlandi, Sudeepa Roy, Cynthia Rudin, Alexander Volfovsky | [FLAME: A Fast Large-scale Almost Matching Exactly Approach to Causal Inference](https://arxiv.org/pdf/1707.06315.pdf) | R | [GitHub](https://github.com/almost-matching-exactly/R-FLAME) | Matching techniques. |
| **dame-flame** | Yameng Liu, Awa Dieng, Sudeepa Roy, Cynthia Rudin, Alexander Volfovsky | [Interpretable Almost Matching Exactly for Causal Inference](https://arxiv.org/pdf/1806.06802.pdf) | Python | [GitHub](https://github.com/almost-matching-exactly/DAME-FLAME-Python-Package) | Matching techniques |
| **PSW** | Huzhang Mao,  Liang Li | [Propensity Score Weighting Methods for Dichotomous Treatments](https://cran.r-project.org/web/packages/PSW/PSW.pdf) | R | [CRAN](https://cran.r-project.org/package=PSW) | Propensity score weights techniques. |
| **CBPS** | Christian Fong, Marc Ratkovic , Kosuke Imai, Chad Hazlett | [Covariate balancing propensity score for a continuous treatment: Application to the efficacy of political advertisements](https://doi.org/10.1214/17-AOAS1101) | R | [CRAN](https://cran.r-project.org/package=CBPS) | Propensity score methods. |
| **ipw** | Willem M. van der Wal, Ronald B. Geskus | [ipw: An R Package for Inverse Probability Weighting](https://www.jstatsoft.org/article/view/v043i13) | R | [CRAN](https://cran.r-project.org/package=ipw) | Inverse probability method techniques. |
| **PSweight** | Tianhui Zhou, Guangyu Tong, Fan Li, Laine E. Thomas,  Fan Li | [PSweight: An R Package for Propensity Score Weighting Analysis](https://arxiv.org/pdf/2010.08893v4) | R | [GitHub](https://github.com/thuizhou/PSweight) | Propensity scores methods. |
| **RISCA** | Yohann Foucher, Florent Le Borgne, Etienne Dantan, Florence Gillaizeau, Arthur Chatton, Christophe Combescure | [RISCA: Causal Inference and Prediction in Cohort-Based Analyses](https://cran.r-project.org/web/packages/RISCA/RISCA.pdf) | R | [CRAN](https://cran.r-project.org/web/packages/RISCA/RISCA) | Methods for causal inference in cohort-based analysis |
| **CausalGAM** | 	Adam Glynn, Kevin Quinn | [An Introduction to the Augmented Inverse Propensity Weighted Estimator](https://www.cambridge.org/core/journals/political-analysis/article/abs/an-introduction-to-the-augmented-inverse-propensity-weighted-estimator/4B1B8301E46F4432C4DCC91FE20780DB) | R | [CRAN](https://cran.r-project.org/package=CausalGAM) | Inverse propensity scores methods. |
| **tmle** | 	Susan Gruber, Mark van der Laan, Chris Kennedy | [Targeted minimum loss based estimation of causal effects of multiple time point interventions](https://pubmed.ncbi.nlm.nih.gov/22611591/) | R | [CRAN](https://cran.r-project.org/package=tmle) | Targeted maximum likelihood estimator method. |
| **BART** | Rodney A. Sparapani,Brent R. Logan,Robert E. McCulloch,Purushottam W. Laud | [Nonparametric survival analysis using Bayesian Additive Regression Trees (BART)](https://onlinelibrary.wiley.com/doi/abs/10.1002/sim.6893) | R | [CRAN](https://cran.r-project.org/package=BART) | Bayesian Additive Regression Trees methodologies. |
| **grf** | Julie Tibshirani, Susan Athey, Rina Friedberg, Vitor Hadad, David Hirshberg, Luke Miner, Erik Sverdrup, Stefan Wager, Marvin Wright | [Generalized Random Forests](https://projecteuclid.org/euclid.aos/1547197251) | R | [GitHub](https://github.com/grf-labs/grf) | Generalized Random Forests methods for causal inference. |
| **CEVAE** | Christos Louizos, Uri Shalit, Joris M. Mooij, David Sontag, Richard Zemel, Max Welling | [Causal Effect Inference with Deep Latent-Variable Models](https://papers.nips.cc/paper/2017/hash/94b5bde6de888ddf9cde6748ad2523d1-Abstract.html) | Python | [GitHub](https://github.com/AMLab-Amsterdam/CEVAE) |  Causal Effect Variational Autoencoder method. |
| **SITE** | Liuyi Yao, Sheng Li, Yaliang Li, Mengdi Huai, Jing Gao, Aidong Zhang | [Representation Learning for Treatment Effect Estimation from Observational Data](https://papers.nips.cc/paper/2018/hash/a50abba8132a77191791390c3eb19fe7-Abstract.html) | Python | [GitHub](https://github.com/Osier-Yi/SITE) | Individual treatment effect estimation method based on deep representation learning. |
| **ivreg** | 	John Fox, Christian Kleiber, Achim Zeileis, Nikolas Kuschnig  | [Instrumental-Variables Regression by '2SLS', '2SM', or '2SMM', with Diagnostics](https://cran.r-project.org/web/packages/ivreg/ivreg.pdf) | R | [https://github.com/john-d-fox/ivreg](GitHub) | Instrumental Variables techniques.
| **rdrobust** | Sebastian Calonico, Matias D. Cattaneo, Max H. Farrell, Rocio Titiunik | [Regression Discontinuity Designs](https://rdpackages.github.io/references/Cattaneo-Titiunik_2021_ARE.pdf)  | R, Python | [GitHub](https://rdpackages.github.io/)| Regression Discontinuity Design methods.
| **rddtools** | Bastiaan Quast | [Toolbox for Regression Discontinuity Design ('RDD')](https://cran.r-project.org/web/packages/rddtools/rddtools.pdf) | R | [GitHub](https://github.com/bquast/rddtools) | Regression Discontinuity Design methods. 
| **rdd** | DrewDimmery | [RegressionDiscontinuityEstimation](https://cran.r-project.org/web/packages/rdd/rdd.pdf) | R | [CRAN](https://cran.r-project.org/package=rdd) | Regression Discontinuity Design methods. 
| **plm** | Yves Croissant, Giovanni Millo | [Panel Data Econometrics in R: The plm package](https://www.jstatsoft.org/article/view/v027i02)| R | [CRAN](https://cran.r-project.org/web/packages/plm/index.html) | Panel Data techniques.
| **linearmodels** | Kevin Sheppard, Brian Lewis, Guangyi, Kevin Wilson, Thrasibule, Xavier RENE-CORAIL, vikjam | NA | Python | [GitHub](https://bashtage.github.io/linearmodels/index.html) | Panel Data and Instrumental Variables techniques (including Difference in Differences). 
| **Synth** | Alberto Abadie, Alexis Diamond, Jens Hainmueller |  [Synth: An R Package for Synthetic Control Methods in Comparative Case Studies](https://www.jstatsoft.org/article/view/v042i13) | R | [CRAN](https://cran.r-project.org/package=Synth) | Synthetic Control methods.
| **causalImpact** | Kay H. Brodersen, Fabian Gallusser, Jim Koehler, Nicolas Remy, Steven L. Scott | [Inferring causal impact using Bayesian structural time-series models](https://research.google/pubs/pub41854/) | R | [GitHub](https://google.github.io/CausalImpact/CausalImpact.html) | Syntehtic Control methods.
