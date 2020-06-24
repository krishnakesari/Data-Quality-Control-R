set.seed(123)
rnorm(9)+runif(9)


num.obj <- seq(from=1, to = 10, by = 2)
mode(num.obj)

factor2 <- factor(c(1,2,3), labels = letters[1:3])
factor2

# Handling missing data
missing_dat <- data.frame(v1 = c(1,NA, 0, 1),
                          v2 = c("M", "F", NA, "M"))

missing_dat
is.na(missing_dat$v1)
any(is.na(missing_dat$v1))

# Making factors from numerical vector
set.seed(123)
numvar <- rnorm(100)

num2factor <- cut(numvar, breaks = 5)
class(num2factor)
levels(num2factor)

table(num2factor) 

# Creating factors with labels
num2factor <- cut(numvar, breaks = 5, labels=c("lowest group",
                 "lowest middle", "middle", "Upper middle", "Highest"))

data.frame(table(num2factor))

# Creating factor variables using conditional statement
num2factor <- factor(ifelse(numvar<=-1.37,1,ifelse(numvar<=- 
0.389,2,ifelse(numvar<=0.592,-3,ifelse(numvar<=1.57,-4,5)))),las=c("(-2.35,-1.37]", "(-1.37,-0.389]", 
"(-0.389,0.592]", "(0.592,1.57]",  "(1.57,2.55]"))