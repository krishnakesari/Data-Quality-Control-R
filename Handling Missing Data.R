
data <- data.frame(Country = c("IND", "USA", NA, "UK", "AUS"), 
                   mean=c(0,2,3.5,NA,0.1), 
                   sd=c(1,1.5,2,5,2))

data

# Checking categorical variables
unique(data$Country)

# Handling missing values by replacing with AFG
data$Country[is.na(data$Country)] <- "AFG"
data

# Handling missing numerical values with 2.5
data$mean[is.na(data$mean)] <- 2.5
data

# Conditional filling of mmissing values
data$mean[data$mean == 2.5] <- 5.0
data

# Conditional substitution of data

if(sum(data$mean) > 5){
    print("its greater than 5")
} else {
    print("Less than 5")
}

if(eval(parse(text = (data$Country))) == "AFG"){
    print("Oh its AFG")
}

