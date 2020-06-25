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

# Selecting distinct rows
distinct(iris, Species, Petal.Width)

# Column-wise summary statistics
summarise(iris, meanSL = mean(Sepal.Length),
                meanSW = mean(Sepal.Width))

# Group-wise Operations
iris.grouped <- group_by(iris, Species)
iris.grouped.summary <- summarize(iris.grouped, count = n(),
                            meanSL = mean(Sepal.Length),
                            meanSW = mean(Sepal.Width))
filter(iris.grouped.summary, meanSL == max(meanSL) | meanSW == max(meanSW))

# Chaining dplyr Operations


















