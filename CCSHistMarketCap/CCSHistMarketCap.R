rm(list=ls(all=TRUE))

# please change your working directory
#setwd("C:/...")

library(xts)
load("data.RData")

hist(x=log10(na.omit(as.numeric(tail(crypto_market_xts, n=1)))), 
     main = "Histogram of log10 Market Cap", 
     breaks = 20, xlab = "", col = rgb(1,0,0,0.5))
hist(x=log10(na.omit(as.numeric(apply(
    crypto_market_xts["2015-07-25::2016-07-24"], 2, mean, na.rm = TRUE)))), 
    breaks = 20, xlab = "", add = T, col = rgb(0,0,1,0.5))