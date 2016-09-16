rm(list=ls(all=TRUE))

# please change your working directory
#setwd("C:/...")

library(xts)
load("data.RData")

hist(rnorm(1000000, mean = mean(crypto_returns_selec_xts[, 1]), 
    sd = sd(crypto_returns_selec_xts[,1])), freq = FALSE, breaks = 100,
    ylim = c(0,25), main = "Density of top 10 cryptos against normal distribution", 
    xlab = "")
for (i in 1:length(max_cryptos)) {
    lines(density(na.omit(crypto_returns_selec_xts[,i])), col = color[i], lwd = 3)
}