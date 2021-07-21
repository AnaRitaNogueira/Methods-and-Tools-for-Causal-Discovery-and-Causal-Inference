DAG_comparision_missing_edges <- function(original, learned) {
  require(igraph)
  require(sparsebnUtils)
  require(bnlearn)
  a<-nrow(get.edgelist(
    sparsebnUtils::to_igraph(as.graphNEL(bnlearn::skeleton(original))) - sparsebnUtils::to_igraph(as.graphNEL(bnlearn::skeleton(learned)))
  ))
  return(a/2)
}

DAG_comparision_extra_edges <- function(original, learned) {
  require(igraph)
  require(sparsebnUtils)
  require(bnlearn)
  a<-nrow(get.edgelist(
    sparsebnUtils::to_igraph(as.graphNEL(bnlearn::skeleton(learned))) - sparsebnUtils::to_igraph(as.graphNEL(bnlearn::skeleton(original)))
  ))
  return(a/2)
}

DAG_missing_edges <- function(original, learned) {
  require(igraph)
  require(sparsebnUtils)
  require(bnlearn)
  
  return(get.edgelist(
    sparsebnUtils::to_igraph(as.graphNEL(bnlearn::skeleton(original))) - sparsebnUtils::to_igraph(as.graphNEL(bnlearn::skeleton(learned))
    )))
}

DAG_extra_edges <- function(original, learned) {
  require(igraph)
  require(sparsebnUtils)
  require(bnlearn)
  
  return(get.edgelist(
    sparsebnUtils::to_igraph(as.graphNEL(bnlearn::skeleton(learned))) - sparsebnUtils::to_igraph(as.graphNEL(bnlearn::skeleton(original))
    )))
}

DAG_comparision_correct_directed_edges <- function(original, learned) {
  require(igraph)
  require(sparsebnUtils)
  require(bnlearn)
  a<-bnlearn::compare(target = learned, current = original)
  return(a$tp)
}

DAG_comparision_incorrect_directed_edges <- function(original, learned) {
  require(igraph)
  require(sparsebnUtils)
  require(bnlearn)
  require(prodlim)
  
  
  extra_edges <-DAG_extra_edges(original,learned)
  missing_edges <-DAG_missing_edges(original,learned)
  
  a<-bnlearn::compare(target = learned, current = original,arcs = TRUE)
  
  fp<-a$fp
  false<-numeric(0)
  if(nrow(fp)>0){
    for (f in 1:nrow(fp)) {
      if(is.na(row.match(fp[f,],missing_edges))&& is.na(row.match(fp[f,],extra_edges))){
        false<-rbind(false,fp[f,])
      }
    }
  }else{
    return(0) 
  }
  if(is.null(nrow(false))){
    return(0)
  }
  print(false)
  return(nrow(false))
  
}

DAG_comparision<-function(original, learned){
  require(bnlearn)
  require(DiagrammeR)
  missing_edges<-DAG_comparision_missing_edges(original, learned)
  cat("Missing Edges:" ,missing_edges,"\n")
  extra_edges<-DAG_comparision_extra_edges(original, learned)
  cat("Extra Edges:" ,extra_edges,"\n")
  correct_directed_edges <-DAG_comparision_correct_directed_edges(original, learned)
  cat("Correct Directed Edges:" ,correct_directed_edges,"\n")
  incorrect_directed_edges <-DAG_comparision_incorrect_directed_edges(original, learned)
  cat("Incorrect Directed Edges:" ,incorrect_directed_edges,"\n")
  original_amat <-amat(original)
  original_amat<-original_amat[ ,order(colnames(original_amat)) ]
  original_amat<-original_amat[ order(row.names(original_amat)), ]
  # print(original_amat)
  learned_amat<-amat(learned)
  learned_amat<-learned_amat[ ,order(colnames(learned_amat)) ]
  learned_amat<-learned_amat[ order(row.names(learned_amat)), ]
  # print(learned_amat)
  shd <-bnstruct::shd(original_amat,learned_amat)
  cat("SHD:" ,shd,"\n")
  sid <- SID::structIntervDist(original_amat,learned_amat)
  cat("SID:" ,sid$sid,"\n")
  
  
  cat(" - - - - - - - - - - - - - - - - - - - - - - - -\n")
  correct_adj<-correct_directed_edges+incorrect_directed_edges
  incorrect_adj<-extra_edges
  true_adj<-nrow(original$arcs)
  adj_precision <-(correct_adj /(correct_adj+incorrect_adj))*100
  cat("Adj Precision:" ,round(adj_precision,2),"% \n")
  adj_recall <-(correct_adj / true_adj)*100
  cat("Adj Recall:" ,round(adj_recall,2),"% \n\n")
  arrhd_precision <-(correct_directed_edges /(correct_adj))*100
  cat("Arrhd Precision:" ,round(arrhd_precision,2),"% \n")
  arrhd_recall <-(correct_directed_edges / true_adj)*100
  print(correct_directed_edges)
  print(true_adj)
  cat("Arrhd Recall:" ,round(arrhd_recall,2),"% \n\n")
}

SHD<-function(original,learned){
  require(pcalg)
  if(class(original)=="bn"){
    original<-new("pcAlgo", graph = as.graphNEL(original))
  }
  
  if(class(learned)=="bn"){
    learned<-new("pcAlgo", graph = as.graphNEL(learned))
  }
  
  return(pcalg::shd(original,learned))
}
