library(lmtest)
grangertest(egg ~ chicken, order = 3, data = ChickEgg)
## eggs granger-cause chickens?
grangertest(chicken ~ egg, order = 3, data = ChickEgg)

library(sna)
library(bnlearn)
tsFCI<- read.dot("/home/rita/Documents/Micro-Projecto Causalidade/Examples for the paper/tsFCI.dot")


V <- c("chicken", "chicken.1","chicken.2","chicken.3","egg","egg.1","egg.2","egg.3")
edL <- vector("list", length=length(V))
names(edL) <- V

edL[[1]] <- list(edges=c(), weights=c())
edL[[2]] <- list(edges=c(1), weights=c(1))
edL[[3]] <- list(edges=c(2), weights=c(1))
edL[[4]] <- list(edges=c(3), weights=c(1))
edL[[5]] <- list(edges=c(), weights=c())
edL[[6]] <- list(edges=c(5), weights=c(1))
edL[[7]] <- list(edges=c(6), weights=c(1))
edL[[8]] <- list(edges=c(7,5), weights=c(1,1))

tsFCI <- as.bn(new("graphNEL", nodes=V, edgeL=edL, edgemode="directed"))
graphviz.plot(tsFCI)


V <- c("chicken.3", "chicken.2","chicken.1","chicken","egg.3","egg.2","egg.1","egg")
edL <- vector("list", length=length(V))
names(edL) <- V

edL[[1]] <- list(edges=c(5), weights=c(1))
edL[[2]] <- list(edges=c(6), weights=c(1))
edL[[3]] <- list(edges=c(7), weights=c(1))
edL[[4]] <- list(edges=c(8), weights=c(1))
edL[[5]] <- list(edges=c(1,6), weights=c(1,1))
edL[[6]] <- list(edges=c(2,7), weights=c(1,1))
edL[[7]] <- list(edges=c(3,8), weights=c(1,1))
edL[[8]] <- list(edges=c(4), weights=c(1))

PCMCI <- as.bn(new("graphNEL", nodes=V, edgeL=edL, edgemode="directed"))

graphviz.plot(PCMCI)
train <- read.csv("/home/rita/Documents/Micro-Projecto Causalidade/Examples for the paper/ChickEgg unfolded.csv")
test <- read.csv("/home/rita/Documents/Micro-Projecto Causalidade/Examples for the paper/ChickEgg_test unfolded.csv")

target<-"egg"
tsFCI_bn<-bn.fit(tsFCI, train)
PCMCI<-cextend(PCMCI)
PCMCI_bn<- bn.fit(PCMCI, train)

original_class<-test$egg
test_data <- remove_columns_by_name(test, target)
pred <- predict(PCMCI_bn, node = target, data = (test_data))

t <-
  cbind(Predictions = (as.numeric(pred) - 1),
        True = (as.numeric(original_class)-1))


remove_columns_by_name <-function(dataset, column_names){
  new_data<-as.data.frame(dataset[ , -which(names(dataset) %in% column_names)])
  names(new_data)<-names(dataset)[!names(dataset) %in% column_names]
  return(new_data)
}


library(TSdist)
LCSSDistance(original_class, pred, epsilon=10)
ERPDistance(original_class, pred, g=10)
EuclideanDistance(original_class, pred)
DTWDistance(original_class, pred)

#MEAN SQUARE ERROR
mean((original_class- pred)^2)
