
[<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/banner.png" width="880" alt="Visit QuantNet">](http://quantlet.de/index.php?p=info)

## [<img src="https://github.com/QuantLet/Styleguide-and-Validation-procedure/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **CCSHistMarketCap** [<img src="https://github.com/QuantLet/Styleguide-and-Validation-procedure/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/d3/ia)

```yaml

Name of Quantlet : CCSHistMarketCap

Published in : The Cross Section of Crypto-Currencies as Financial Asset

Description : 'Gives 2 histograms for the distribution of market capitalization of
crypto-currencies in 2 different time periods.'

Keywords : histogram, Crypto-Currencies, log, market capitalization, plot

See also : 'CCSAlphas, CCSCryptoSurvival, CCSecdf, CCSHistMarketCapHighValAreas,
CCSHistReturnsDensity, CCSMarketCapvsVol, CCSMeansRollingWindow, CCSPCAExVar, CCSSdRollingWindow'

Author : Simon Trimborn, Hermann Elendner

Submitted : Fri, September 16 2016 by Simon Trimborn

Datafile : data.RData

Example : 'A plot giving 2 histograms for the distribution of market capitalization of
crypto-currencies in 2 different time periods.'

```

![Picture1](CCSHistMarketCap.png)


### R Code:
```r
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
```
