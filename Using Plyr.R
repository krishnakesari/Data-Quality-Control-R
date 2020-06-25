
# Split-apply-combine loop

mean.Titanic.loop <- NULL
    for (Sex in unique(Titanic$Sex))
    {
      Titanic_sub <- Titanic[Titanic$Sex== male,]
      column_means <- colMeans(Titanic_sub[,-5]) 
      mean.Titanic.loop <- rbind(mean.Titanic.loop, column_means) 
    }

rownames(mean.Titanic.loop) <- unique(Titanic$Sex)

# Using plyr utilities
library(plyr)
ddply(iris, .(Species), function(x) colMeans(x[-5]))
ddply(iris, .(Species), function(x) sum(x[-5]))

class(iris3)
dim(iris3)

# calculate column mean for each species and output will be a data frame
iris_mean <- adply(iris3,3, colMeans)
iris_mean
class(iris_mean)

# Calculate column mean and out put will be an array/matrix
iris_mean2 <- aaply(iris3,3, colMeans)
iris_mean2
class(iris_mean2)

# Calculate column mean and output as a list
iris_mean3 <- alply(iris3,3, colMeans)
iris_mean3
class(iris_mean3)
iris_mean3$'1'
iris_mean3$'2'
iris_mean3$'3'
