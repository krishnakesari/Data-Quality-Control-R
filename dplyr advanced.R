library(dplyr)
colnames(iris)
head(filter(iris, Species=="virginica"))

# Slicingicing data set with row numbers
slice(iris, 1:10)

# Arranging and ordering
head(arrange(iris, Sepal.Length, desc(Sepal.Width)))

# Mutate
iris4 <- slice(iris, 10:20)
mutate(iris4, SLsd=(Sepal.Length-mean(Sepal.Length))/sd(Sepal.Length))

# Transmute - Drops old variables and only keeps newly created variables
iris5 <- slice(iris, 20:30)
transmute(iris5, SLsd=(Sepal.Length-mean(Sepal.Length))/sd(Sepal.Length))
