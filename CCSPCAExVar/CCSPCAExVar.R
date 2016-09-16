rm(list=ls(all=TRUE))

# please change your working directory
#setwd("C:/...")

library(xts)
load("data.RData")

pca = prcomp(na.omit(crypto_returns_selec_xts))
plot(summary(pca)$importance[3,], type = "l", lwd = 3, 
     main = "Cumulative explained variance", xlab = "Principal components", 
     ylab = "Explained variance")
