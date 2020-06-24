# Subscripting values

num <- c(1:10)
num[5]
# validation
num > 5
# Subscription the values
num[num > 3]
# Removing a value
num[-10]

# Creating a data frame
data_2variable <- data.frame(x1=c(2,3,4,5,6),x2=c(5,6,7,8,1))
data_2variable
# First Row
data_2variable[1,]
# Second Column
data_2variable[,2]
# First Row and First column
data_2variable[1,1]

# Create a list object and acccess its elements
list_obj<- list(dat=data_2variable,vec.obj=c(1,2,3))
list_obj$dat
list_obj$vec.obj

# Accessing second element of the list object elements
list_obj[[2]]

# Accessing individual elements of list object
list_obj[[2]][1]
list_obj$dat