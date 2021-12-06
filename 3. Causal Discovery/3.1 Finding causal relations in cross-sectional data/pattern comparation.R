
library(bnlearn)
library(pcalg)


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



#implementation of bnlearn's PC
pc<-pc.stable(x=asia,alpha = 0.05,test="x2")
