dat <- data.frame(Region = c("AFR", "AFR", "EAP", "LCR", "LCR"),
                  Amount = c(1.56, 2.97,  2.83, 6.87, 8.83)) 
dat

dat2 <- melt(dat, id.vars=c("Region", "Amount"))
dat2