
library(bnlearn)
library(pcalg)
data(asia) # function to obtain the data for this example

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


#comparision between the true network and the generated networks (since, the three methods generated the same network, we compare only one)

true_dag = model2network("[A][S][T|A][L|S][B|S][D|B:E][E|T:L][X|E]")
graphviz.plot(true_dag)
graphviz.compare(true_dag, pc.fit)

DAG_comparision(true_dag, pc.fit)
