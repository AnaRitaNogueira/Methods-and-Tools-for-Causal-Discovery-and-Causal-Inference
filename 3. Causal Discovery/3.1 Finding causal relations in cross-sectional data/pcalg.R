library(pcalg)

#--------------------------------------------PC--------------------------------------------
#asia
 numeric_asia <- data_frame_to_numeric(asia)
 values <-
   as.numeric(countUniqueValues(numeric_asia))
 suffStat <-
   list(dm = numeric_asia,
        nlev = values,
        adaptDF = FALSE)
V <- colnames(numeric_asia)

pc.fit <- pc(
  suffStat,
  indepTest = binCItest,
  skel.method="stable",
  alpha = 0.05,
  labels = V,
  # u2pd = "retry",
  verbose = TRUE
)

#gaussian.test

n <- nrow (gaussian.test)
V <- colnames(gaussian.test)
suffStat <-list(C = cor(gaussian.test), n = n)

pc.fit <- pc(
  suffStat,
    indepTest = gaussCItest,
  skel.method="stable",
  alpha = 0.05,
  labels = V,
  # u2pd = "retry",
  verbose = TRUE
)
#clgaussian.test
library(MXM)
V <- colnames(clgaussian.test)
numeric_clgaussian.text<-data_frame_to_numeric2(clgaussian.test)
suffStat <-
  list(dataset = numeric_clgaussian.text)

pc.fit <- pc(
  suffStat,
  indepTest = ci.mm2,
  alpha = 0.05,
  labels = V,
  verbose = TRUE
)

#--------------------------------------------GES--------------------------------------------
#asia
score <- new("GaussL0penObsScore", numeric_asia)
ges.fit <- ges(score)

#gaussian.test
score <- new("GaussL0penObsScore", gaussian.test)
ges.fit <- ges(score)

#clgaussian.test
score <- new("GaussL0penObsScore", numeric_clgaussian.text)
ges.fit <- ges(score)

#--------------------------------------------FCI--------------------------------------------

stoneFlakes <- read.csv("StoneFlakes.csv")
n <- nrow (stoneFlakes)
V <- colnames(stoneFlakes)
suffStat <-list(C = cor(stoneFlakes), n = n)

fci.fit <- fci(
  suffStat,
  indepTest = gaussCItest,
  alpha = 0.05,
  labels = V,
  # u2pd = "retry",
  verbose = TRUE
)

#--------------------------------------------PC-Select--------------------------------------------
pSelect <-
  pcSelect(y = gaussian.test$C,dm =  gaussian.test[ , -which(names(gaussian.test) %in% c("C"))], alpha =
             0.05)
pSelectDF <- as.data.frame(pSelect$G)
print(pSelectDF)
pSelectDF <- as.data.frame(setDT(pSelectDF, keep.rownames = TRUE)[])
causal_columns <- pSelectDF[pSelectDF$`pSelect$G` == TRUE, ]$rn
