
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

pc.fit<-as.bn(pc.fit)

pc<-pc.stable(x=asia,alpha = 0.05,test="x2")

score <- new("GaussL0penObsScore", numeric_asia)
ges.fit <- ges(score)
ges.fit<-essgraph_to_graphNEL(ges.fit)

fci.fit <- fci(
  suffStat,
  indepTest = binCItest,
  alpha = 0.05,
  labels = V,
  # u2pd = "retry",
  verbose = TRUE
)
plot(fci.fit)

fci.fit<-amat_to_graphNEL(fci.fit@amat)

true_dag = model2network("[A][S][T|A][L|S][B|S][D|B:E][E|T:L][X|E]")


png("/home/rita/Documents/Micro-Projecto Causalidade/Examples for the paper/comparision.png",width = 1000,height = 1000)
par(mfrow = c(4,4),bg=NA)
graphviz.compare(true_dag, pc.fit, pc, ges.fit,fci.fit)
dev.off()

graphviz.compare(dag,x)
