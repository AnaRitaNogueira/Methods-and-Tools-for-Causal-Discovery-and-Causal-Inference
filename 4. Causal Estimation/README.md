

The files provided here are for replictaing results in example 4.4.

We also add here relevant links to common tools to estimate causal effects.
These tools are devided depending on the assumptions we can safely make.

# Tools for Causal Estimation

## General purpose tools

| Software | Authors | Paper | Language | Source |
| -------- | ------- | ----- | -------- | ------ |
| DoWhy | Amit Sharma, Emre Kiciman | [DoWhy: An End-to-End Library for Causal Inference](https://arxiv.org/abs/2011.04216) | Python | [Git Hub](https://github.com/Microsoft/dowhy) |
| CausalML | Huigang Chen, Totte Harinen, Jeong-Yoon Lee, Mike Yung, Zhenyu Zhao | [CausalML: Python Package for Causal Machine Learning](https://arxiv.org/abs/2002.11631) | Python | [Git Hub](https://github.com/uber/causalml) |
| EconML | Keith Battocchi, Eleanor Dillon, Maggie Hei, Greg Lewis, Paul Oka, Miruna Oprescu, Vasilis Syrgkanis | [A Python Package for ML-Based Heterogeneous Treatment Effects Estimation](https://cpb-us-w2.wpmucdn.com/sites.coecis.cornell.edu/dist/a/238/files/2019/12/Id_112_final.pdf) | Python | [GitHub](https://github.com/microsoft/EconML) |






## Causal Estimation when unconfoundedness holds

| Software | Authors | Paper | Language | Source |
| -------- | ------- | ----- | -------- | ------ |
| Matching | Jasjeet S. Sekhon | [Multivariate and Propensity Score Matching Software with Automated Balance Optimization: The Matching package for R](https://www.jstatsoft.org/article/view/v042i07) | R |  [Documentation](https://cran.r-project.org/web/packages/Matching/Matching.pdf) |
| MatchIT | Daniel Ho, Kosuke Imai, Gary King, Elizabeth A. Stuart | [MatchIt: Nonparametric Preprocessing for Parametric Causal Inference
](https://www.jstatsoft.org/article/view/v042i08) | R | [GitHub](https://github.com/kosukeimai/MatchIt) |
| R-FLAME | Vittorio Orlandi, Sudeepa Roy, Cynthia Rudin, Alexander Volfovsky | [FLAME: A Fast Large-scale Almost Matching Exactly Approach to Causal Inference](https://arxiv.org/pdf/1707.06315.pdf) | R | [GitHub](https://github.com/almost-matching-exactly/R-FLAME) |


dame-flame(Diengetal.,2019) 3ATE,CATE 3
PSW(MaoandLi,2018) 3ATE,ATT,CATE 3
CBPS(Fongetal.,2021) 3ATE,ATT,CATE,LATE 333
ipw(vanderWalandGeskus,2011) 3ATE,ATT,CATE 33
PSweight(Zhouetal.,2021) 3ATE,ATT,CATE 3
RISCA(Foucheretal.,2020) 3ATE,ATT 33
CausalGAM(GlynnandQuinn,2017) 3ATE,ATT 33
tmle(GruberandvanderLaan,2012) 3ATE,ATT,CATE 3
BART(Sparapanietal.,2021) 3ATE,ATT,CATE 3
grf(Tibshiranietal.,2020) 3ATE,ATT,CATE 3
causalML(Chenetal.,2020) 3ATE,ATT,ITE,CATE,LATE 33
CEVAE(Shalitetal.,2017) 3ATE,ITE,CATE 3
SITE(Yaoetal.,2018) 3ATE,ATT,CATE 3
ivreg(Foxetal.,2021) LATE 3
rddrobust(Calonicoetal.,2021) ATEatthecutoff 3
rddtools(StiglerandQuast,2016) 3ATEatthecutoff 3
rdd(Dimmery,2016) 3ATEatthecutoff 3
plm(CroissantandMillo,2008) 3ATE 3
linearmodels(Sheppardetal.,2021) 3ATE 3
Synth(Abadieetal.,2011) 3ATE 3
causalImpact(Brodersenetal.,2014) 33ATE 3
TABLE 13 Overviewofsoftwareandmethodsforcausalestimation
