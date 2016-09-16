rm(list=ls(all=TRUE))

# please change your working directory
#setwd("C:/...")

library(xts)
load("data.RData")

hist(x=log10(na.omit(as.numeric(apply(crypto_market_xts["::2014-08"], 2, 
                                      mean, na.rm = TRUE)))), 
     main = "Histogram of log10 Market Cap", 
     breaks = 20, xlab = "", col = rgb(1,0,0,0.5), ylim = c(0,60))
hist(x=log10(na.omit(as.numeric(apply(crypto_market_xts["2016-01-01::"], 2, 
                                      mean, na.rm = TRUE)))), 
     breaks = 20, xlab = "", add = T, col = rgb(0,0,1,0.5))