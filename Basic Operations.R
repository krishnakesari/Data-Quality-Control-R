
# Modes and Classes
set.seed(123)
rnorm(9) + runif(9)

# Mode
num.obj <- seq(from = 1, to = 10, by = 2)
mode(num.obj) # returns mode of an R object

is.numeric(num.obj) # Checking if numeric
class(num.obj)

# Vector
vector1 <- c(1,3,5,7,9)
vector1

# Factor
factor1 <- factor(c(1,2,3))
factor1
labels(factor1)

# Data frame
a = c(1,2,3)
b = c('x', 'y', 'z')
c = c('m', 'n', 'o')

d = data.frame(a, b, c)
d
colnames(d)

# Matrix
d.mat <- as.matrix(d)
d.mat
class(d.mat)
mode(d.mat)

## To multiply matrix all values should be numerical
num.mat <- matrix(rnorm(9), nrow = 3, ncol = 3)
num.mat

t(num.mat) # Transposed Matrix

t(num.mat) %*% num.mat # Multiplication

