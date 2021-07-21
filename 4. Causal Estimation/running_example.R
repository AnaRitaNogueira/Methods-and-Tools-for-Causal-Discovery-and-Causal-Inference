library("lmtest")
library("sandwich")
library(MatchIt)
library(CausalGAM)
library(ipw)


coeffs_ols <- c()
se_ols <- c()
coeffs_em <- c()
se_em <- c()
coeffs_fm <- c()
se_fm <- c()
coeffs_ipw <- c()
se_ipw <- c()
coeffs_aipw <- c()
se_aipw <- c()
runs <- 1000
#HIGH IMPACT RUN
for (i in 1:runs){
    set.seed(i)
    print(i)
    n_obs <- 10000
    #here we simulate the data in order to have a ground truth --> for the parameters in order to make them reasonable we used as a reference https://news.gallup.com/poll/328241/americans-average-weight-holds-steady-2020.aspx
    # and the statista data on overweight people and race distribution
    n_obs <- 10000
    white <- rbinom(n = n_obs, size = 1, prob = 0.65)
    overweight <- ifelse(white, rbinom(n = length(white) , size= 1, 0.32), rbinom(n = length(white) , size= 1, 0.4))
    man <- rbinom(n = n_obs, size = 1, prob = 0.5)
    N_Y <- rnorm(n = n_obs, mean = 15, 1)
    N_T <- rnorm(n = n_obs, mean = 4, sd = 2)
    treat <- ifelse(test = (N_T + white +3*overweight -man ) > 6, 1, 0)
    weight <- ifelse(man, rnorm(length(man),200, 30) - 30*treat + N_Y, rnorm(length(man),150, 30) - 30*treat + N_Y)
    df <- as.data.frame(cbind(white, overweight, man, treat, weight))
    #here we add columns that will be used in the regression
    df$white_dem = df$white -mean(df$white)
    df$overweight_dem = df$overweight -mean(df$overweight)
    df$man_dem = df$man -mean(df$man)
    df$treat_white_dem = df$treat * df$white_dem
    df$treat_overweight_dem = df$treat * df$overweight_dem
    df$treat_man_dem = df$treat * df$man_dem
    #here we run a simple OLS regression with robust standard errors
    ols <- lm(weight ~ 1+ treat+man+overweight +white + treat_white_dem + treat_overweight_dem + treat_man_dem, data = df)
    coeffs_ols[i] <- ols$coefficients['treat']
    # Robust t test
    rob <- coeftest(ols, vcov = vcovHC(ols, type = "HC0"))
    se_ols[i] <- rob['treat',2] 
    ############################################
    ############# EXACT MATCHING ###############
    ############################################
    
    method = "exact"
    matched <- matchit(treat ~ +man +white +overweight, data = df, method = method, estimand = "ATE")
    md <- match.data(matched)
    ols_exact_matching <- lm(weight~1+treat, data=md, weights = weights)
    rob_em <- coeftest(ols_exact_matching, vcov = vcovHC(ols_exact_matching, type = "HC0"))
    coeffs_em[i] <- rob_em['treat',1]
    se_em[i] <- rob_em['treat',2]
    ############################################
    ############# FULL MATCHING ###############
    ############################################
    
    method = "full"
    matched <- matchit(treat ~ +man +white +overweight, data = df, method = method, estimand = "ATE")
    md <- match.data(matched)
    ols_full_matching <- lm(weight~1+treat, data=md, weights = weights)
    rob_fm <- coeftest(ols_full_matching, vcov = vcovHC(ols_full_matching, type = "HC0"))
    coeffs_fm[i] <- rob_fm['treat',1]
    se_fm[i] <- rob_fm['treat',2]
    ############################################
    ############# IPW WEIGHTING ###############
    ############################################
    
    iptw_ps<-ipwpoint(exposure=treat, family='binomial', link='logit', numerator = ~1,
         denominator= ~1+man+overweight+white,data=df )
    ols_ipw <- lm(weight~treat, data=df, weights= iptw_ps$ipw.weights)
    rob_ipw <- coeftest(ols_ipw, vcov = vcovHC(ols_ipw, type = "HC0"))
    coeffs_ipw[i] <- rob_ipw['treat',1]
    se_ipw[i] <- rob_ipw['treat',2]
    
    ############################################
    ############# AIPW ESTIMATOR ###############
    ############################################
    
    #here we pick the AIPW
    pscore_formula = treat ~ 1+white+man+ overweight
    outcome_formula = weight ~ 1+ treat

    ATE_aipw <- estimate.ATE(pscore.formula = pscore_formula, pscore.family = binomial
                 , outcome.formula.t = outcome_formula, outcome.formula.c = outcome_formula
                 , outcome.family = gaussian
                 , treatment.var = 'treat', data = df, var.gam.plot = FALSE)
    
    coeffs_aipw[i] <- ATE_aipw$ATE.AIPW.hat
    se_aipw[i] <- ATE_aipw$ATE.AIPW.sand.SE 
}

res_high_impact <- as.data.frame(cbind(coeffs_ols, se_ols, coeffs_em, se_em, coeffs_fm, se_fm, coeffs_ipw, se_ipw, coeffs_aipw, se_aipw))
write.csv(res_high_impact, "res_high__small_impact.csv")


#LOW IMPACT RUN

coeffs_ols <- c()
se_ols <- c()
coeffs_em <- c()
se_em <- c()
coeffs_fm <- c()
se_fm <- c()
coeffs_ipw <- c()
se_ipw <- c()
coeffs_aipw <- c()
se_aipw <- c()

for (i in 1:runs){
    set.seed(1000+i)
    n_obs <- 10000
    #here we simulate the data in order to have a ground truth
    n_obs <- 10000
    white <- rbinom(n = n_obs, size = 1, prob = 0.65)
    overweight <- ifelse(white, rbinom(n = length(white) , size= 1, 0.32), rbinom(n = length(white) , size= 1, 0.4))
    man <- rbinom(n = n_obs, size = 1, prob = 0.5)
    N_Y <- rnorm(n = n_obs, mean = 15, 1)
    N_T <- rnorm(n = n_obs, mean = 4, sd = 2)
    treat <- ifelse(test = (N_T + white +3*overweight -man ) > 6, 1, 0)
    weight <- ifelse(man, rnorm(length(man),200, 30) - 10*treat + N_Y, rnorm(length(man),150, 30) - 10*treat + N_Y)
    df <- as.data.frame(cbind(white, overweight, man, treat, weight))
    #here we add columns that will be used in the regression
    df$white_dem = df$white -mean(df$white)
    df$overweight_dem = df$overweight -mean(df$overweight)
    df$man_dem = df$man -mean(df$man)
    df$treat_white_dem = df$treat * df$white_dem
    df$treat_overweight_dem = df$treat * df$overweight_dem
    df$treat_man_dem = df$treat * df$man_dem
    #here we run a simple OLS regression with robust standard errors
    ols <- lm(weight ~ 1+ treat+man+overweight +white + treat_white_dem + treat_overweight_dem + treat_man_dem, data = df)
    coeffs_ols[i] <- ols$coefficients['treat']
    # Robust t test
    rob <- coeftest(ols, vcov = vcovHC(ols, type = "HC0"))
    se_ols[i] <- rob['treat',2] 
    ############################################
    ############# EXACT MATCHING ###############
    ############################################
    
    method = "exact"
    matched <- matchit(treat ~ +man +white +overweight, data = df, method = method, estimand = "ATE")
    md <- match.data(matched)
    ols_exact_matching <- lm(weight~1+treat, data=md, weights = weights)
    rob_em <- coeftest(ols_exact_matching, vcov = vcovHC(ols_exact_matching, type = "HC0"))
    coeffs_em[i] <- rob_em['treat',1]
    se_em[i] <- rob_em['treat',2]
    ############################################
    ############# FULL MATCHING ###############
    ############################################
    
    method = "full"
    matched <- matchit(treat ~ +man +white +overweight, data = df, method = method, estimand = "ATE")
    md <- match.data(matched)
    ols_full_matching <- lm(weight~1+treat, data=md, weights = weights)
    rob_fm <- coeftest(ols_full_matching, vcov = vcovHC(ols_full_matching, type = "HC0"))
    coeffs_fm[i] <- rob_fm['treat',1]
    se_fm[i] <- rob_fm['treat',2]
    ############################################
    ############# IPW WEIGHTING ###############
    ############################################
    
    iptw_ps<-ipwpoint(exposure=treat, family='binomial', link='logit', numerator = ~1,
         denominator= ~1+man+overweight+white,data=df )
    ols_ipw <- lm(weight~treat, data=df, weights= iptw_ps$ipw.weights)
    rob_ipw <- coeftest(ols_ipw, vcov = vcovHC(ols_ipw, type = "HC0"))
    coeffs_ipw[i] <- rob_ipw['treat',1]
    se_ipw[i] <- rob_ipw['treat',2]
    
    ############################################
    ############# AIPW ESTIMATOR ###############
    ############################################
    
    #here we pick the AIPW
    pscore_formula = treat ~ 1+white+man+ overweight
    outcome_formula = weight ~ 1+ treat

    ATE_aipw <- estimate.ATE(pscore.formula = pscore_formula, pscore.family = binomial
                 , outcome.formula.t = outcome_formula, outcome.formula.c = outcome_formula
                 , outcome.family = gaussian
                 , treatment.var = 'treat', data = df, var.gam.plot = FALSE)
    
    coeffs_aipw[i] <- ATE_aipw$ATE.AIPW.hat
    se_aipw[i] <- ATE_aipw$ATE.AIPW.sand.SE 
}

res_high_impact <- as.data.frame(cbind(coeffs_ols, se_ols, coeffs_em, se_em, coeffs_fm, se_fm, coeffs_ipw, se_ipw, coeffs_aipw, se_aipw))
write.csv(res_high_impact, "res_low_impact.csv")


#NO IMPACT RUN

coeffs_ols <- c()
se_ols <- c()
coeffs_em <- c()
se_em <- c()
coeffs_fm <- c()
se_fm <- c()
coeffs_ipw <- c()
se_ipw <- c()
coeffs_aipw <- c()
se_aipw <- c()

for (i in 1:runs){
    set.seed(2000+i)
    n_obs <- 10000
    #here we simulate the data in order to have a ground truth
    n_obs <- 10000
    white <- rbinom(n = n_obs, size = 1, prob = 0.65)
    overweight <- ifelse(white, rbinom(n = length(white) , size= 1, 0.32), rbinom(n = length(white) , size= 1, 0.4))
    man <- rbinom(n = n_obs, size = 1, prob = 0.5)
    N_Y <- rnorm(n = n_obs, mean = 15, 1)
    N_T <- rnorm(n = n_obs, mean = 4, sd = 2)
    treat <- ifelse(test = (N_T + white +3*overweight -man ) > 6, 1, 0)
    weight <- ifelse(man, rnorm(length(man),200, 30) + N_Y, rnorm(length(man),150, 30) + N_Y)
    df <- as.data.frame(cbind(white, overweight, man, treat, weight))
    #here we add columns that will be used in the regression
    df$white_dem = df$white -mean(df$white)
    df$overweight_dem = df$overweight -mean(df$overweight)
    df$man_dem = df$man -mean(df$man)
    df$treat_white_dem = df$treat * df$white_dem
    df$treat_overweight_dem = df$treat * df$overweight_dem
    df$treat_man_dem = df$treat * df$man_dem
    #here we run a simple OLS regression with robust standard errors
    ols <- lm(weight ~ 1+ treat+man+overweight +white + treat_white_dem + treat_overweight_dem + treat_man_dem, data = df)
    coeffs_ols[i] <- ols$coefficients['treat']
    # Robust t test
    rob <- coeftest(ols, vcov = vcovHC(ols, type = "HC0"))
    se_ols[i] <- rob['treat',2] 
    ############################################
    ############# EXACT MATCHING ###############
    ############################################
    
    method = "exact"
    matched <- matchit(treat ~ +man +white +overweight, data = df, method = method, estimand = "ATE")
    md <- match.data(matched)
    ols_exact_matching <- lm(weight~1+treat, data=md, weights = weights)
    rob_em <- coeftest(ols_exact_matching, vcov = vcovHC(ols_exact_matching, type = "HC0"))
    coeffs_em[i] <- rob_em['treat',1]
    se_em[i] <- rob_em['treat',2]
    ############################################
    ############# FULL MATCHING ###############
    ############################################
    
    method = "full"
    matched <- matchit(treat ~ +man +white +overweight, data = df, method = method, estimand = "ATE")
    md <- match.data(matched)
    ols_full_matching <- lm(weight~1+treat, data=md, weights = weights)
    rob_fm <- coeftest(ols_full_matching, vcov = vcovHC(ols_full_matching, type = "HC0"))
    coeffs_fm[i] <- rob_fm['treat',1]
    se_fm[i] <- rob_fm['treat',2]
    ############################################
    ############# IPW WEIGHTING ###############
    ############################################
    
    iptw_ps<-ipwpoint(exposure=treat, family='binomial', link='logit', numerator = ~1,
         denominator= ~1+man+overweight+white,data=df )
    ols_ipw <- lm(weight~treat, data=df, weights= iptw_ps$ipw.weights)
    rob_ipw <- coeftest(ols_ipw, vcov = vcovHC(ols_ipw, type = "HC0"))
    coeffs_ipw[i] <- rob_ipw['treat',1]
    se_ipw[i] <- rob_ipw['treat',2]
    
    ############################################
    ############# AIPW ESTIMATOR ###############
    ############################################
    
    #here we pick the AIPW
    pscore_formula = treat ~ 1+white+man+ overweight
    outcome_formula = weight ~ 1+ treat

    ATE_aipw <- estimate.ATE(pscore.formula = pscore_formula, pscore.family = binomial
                 , outcome.formula.t = outcome_formula, outcome.formula.c = outcome_formula
                 , outcome.family = gaussian
                 , treatment.var = 'treat', data = df, var.gam.plot = FALSE)
    
    coeffs_aipw[i] <- ATE_aipw$ATE.AIPW.hat
    se_aipw[i] <- ATE_aipw$ATE.AIPW.sand.SE 
}

res_high_impact <- as.data.frame(cbind(coeffs_ols, se_ols, coeffs_em, se_em, coeffs_fm, se_fm, coeffs_ipw, se_ipw, coeffs_aipw, se_aipw))
write.csv(res_high_impact, "res_no_impact.csv")