library(bnlearn)

pc<-pc.stable(x=asia,alpha = 0.05,test="x2")
graphviz.plot(pc)
DAG_comparision(dag,pc)


pc<-pc.stable(x=gaussian.test,alpha = 0.05, test="cor")
graphviz.plot(pc)
DAG_comparision(dag,pc)


pc<-pc.stable(x=clgaussian.test,alpha = 0.05,test="mi-cg")
graphviz.plot(pc)
DAG_comparision(dag,pc)
