data_frame_to_numeric<-function(data){
  return(data.frame(sapply(data, as.numeric))-1)
}

countUniqueValues<-function(data) {
  values <- c()
  for (i in 1:ncol(data)) {
    n <- length(unique(data[, i]))
    values <- c(values, n)
  }
  return(values)
}


data_frame_to_numeric2<-function(data){
  library(plyr)
  for (i in 1:ncol(data)) {
    if(is.discrete(data[,i])){
      data[,i]<-as.numeric(data[,i])
    }
  }
  
  return(data)
}

essgraph_to_graphNEL<-function(essgraph){
  V <- essgraph$essgraph$.nodes
  edL <- vector("list",length=length(essgraph$essgraph$.in.edges))
  names(edL) <- V
  for(i in 1:length(V)){
    rels<-c()
    for(j in 1:length(essgraph$essgraph$.in.edges)){
      relation<-essgraph$essgraph$.in.edges[[j]]
      if(i %in% (relation)){
        rels<-c(rels,j)
      }
      
    }
    edL[[paste0(V[i])]]<-list(edges=rels,weights=rep(1,times=length(rels)))
  }
  
  g <- new("graphNEL", nodes=V, edgeL=edL, edgemode="directed")
  return(as.bn(g))
}

amat_to_graphNEL<-function(amat){
  library(bnlearn)
  V <- colnames(amat)
  # print(V)
  edL <- vector("list",length=nrow(amat))
  names(edL) <- V
  # print(edL)
  for(i in 1:length(V)){
    rels<-c()
    for(j in 1:ncol(amat)){
      print(amat[i,j])
      print(amat[j,i])
      print("_____________________")
      relation<-amat[i,j]
      if(relation==1){
        if( amat[j,i]==1 || amat[j,i]==0){
          rels<-c(rels,j)
        }
      }
      if(relation==2){
        rels<-c(rels,j)
      }
      
    }
    edL[[paste0(V[i])]]<-list(edges=rels,weights=rep(1,times=length(rels)))
  }
  
  g <- new("graphNEL", nodes=V, edgeL=edL, edgemode="directed")
  return(as.bn(g))
}

pcselect_to_graph<-function(causal_columns,target ){
  undirected_graph = empty.graph(c(causal_columns,target))
  relations<-c()
  for (var in causal_columns) {
    relations<-c(relations, c(var,target, target,var))
  }
  arc.set = matrix(relations,
                   ncol = 2, byrow = TRUE,
                   dimnames = list(NULL, c("from", "to")))
  
  arcs(cundirected_graph) = arc.set
  return(undirected_graph)
}



