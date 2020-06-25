head(iris)

iris.setosa <- subset(iris, Species == "setosa",
                    select=c(Sepal.Length, Sepal.Width, Petal.Length, Petal.Width))
head(iris.setosa)

# Calculating mean for the column values
setosa <- colMeans(iris.setosa)
setosa

