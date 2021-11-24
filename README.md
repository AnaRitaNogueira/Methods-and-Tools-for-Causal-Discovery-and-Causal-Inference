# Methods and Tools for Causal Discovery and Causal Inference
By Ana Rita Nogueira, Andrea Pugnana, Salvatore Ruggieri, Dino Pedreschi and Joao Gama.

## Introduction

This page is used as a support for the paper "Methods and Tools for Causal Discovery and Causal Inference".

The repository contains two main folders:

* **[Causal Discovery](https://github.com/AnaRitaNogueira/Methods-and-Tools-for-Causal-Discovery-and-Causal-Inference/tree/main/3.%20Causal%20Discovery)**;
* **[Causal Estimation](https://github.com/AnaRitaNogueira/Methods-and-Tools-for-Causal-Discovery-and-Causal-Inference/tree/main/4.%20Causal%20Estimation)**.

Each of these folders contains files that could help practitioners to find examples on how to use different tools.

## Causal Discovery
The first folder contains examples for section 3 of the paper. The examples are divided according to the kind of data: we have provided examples for both cross-sectional data techniques and scripts for dealing with causal discovery for time-series. Different software packages were tested in order to check different methods.

### Causal Discovery for cross-sectional data
The main files are:

* []()
* [pattern_comparation.R](https://github.com/AnaRitaNogueira/Methods-and-Tools-for-Causal-Discovery-and-Causal-Inference/blob/main/3.%20Causal%20Discovery/3.1%20Finding%20causal%20relations%20in%20cross-sectional%20data/pattern%20comparation.R), which is used for 
*
*

### Causal Discovery for time-series data

## Causal Estimation
The second folder contains the R scripts for the example in section 4.4.

We have two main files:

* [running_example.R](https://github.com/AnaRitaNogueira/Methods-and-Tools-for-Causal-Discovery-and-Causal-Inference/blob/main/4.%20Causal%20Estimation/running_example.R), which refers to the code to replicate the results provided in Table 14. The file contains code examples for OLS linear regression, exact (one to one) matching estimator, full matching, stabilized IPW and doubly robust AIPW. 
* [running_small.R](https://github.com/AnaRitaNogueira/Methods-and-Tools-for-Causal-Discovery-and-Causal-Inference/blob/main/4.%20Causal%20Estimation/running_small.R), which was used to compute timing of each of the different methods.

CSV files with results for each run are also provided.

It is worth noticing that these methods allow to retrieve the causal effect under the **unconfoundedness assumption**, which we assume it is satisfied, as we know how the data are generated.

