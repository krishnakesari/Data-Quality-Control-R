library(dplyr)
library(plyr)

parameter.dat <- data.frame(n=c(25,50,100,200,400), 
                            mean=c(0,2,3.5,2.5,0.1), 
                            sd=c(1,1.5,2,5,2))

set.seed(12345)
dat <- list() 
for(i in 1:nrow(parameter.dat)) 
{ 
dat[[i]] <- rnorm(n=parameter.dat[i,1], 
mean=parameter.dat[i,2],sd=parameter.dat[i,3]) 
}
# Estimating mean from the newly generated data
estmean <- lapply(dat, mean)
estmean

## Peforming above task with plyr package
dat_plyr <- mlply(parameter.dat, rnorm)
estmean_plyr <- llply(dat_plyr,mean)
estmean_plyr

