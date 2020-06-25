head(iris)

iris.setosa <- subset(iris, Species == "setosa",
                    select=c(Sepal.Length, Sepal.Width, Petal.Length, Petal.Width))
head(iris.setosa)

# Calculating mean for the column values
setosa <- colMeans(iris.setosa)

# Splitting dataset
iris.split <- split(iris, as.factor(iris$Species))
head(iris.split)

## Calculating mean value for the splitting dataset
iris.apply <- lapply(iris.split, function(x)colMeans(x[-5]))
iris.apply

# Combining results
iris.combine <- do.call(rbind,iris.apply)
iris.combine