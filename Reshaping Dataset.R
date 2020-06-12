library(reshape)

# Using melt data frame

Titanic_molten <- melt.data.frame(Titanic, id.vars =c("Sex", "Survived"))

head(Titanic)
head(Titanic_molten)

# Using melt with more specifications

Titanic_melt <- melt(Titanic, id =c("Sex", "Survived"), measured = c("male", "female"))
head(Titanic_melt)

# Using reshape function
Titanic_reshape <- reshape(Titanic, direction = "wide", idvar = "Sex", timevar = "Survived")
head(Titanic_reshape)

# Missing values in molten data
## use na.rm = True

# Casting molten data
Titanic_cast <- melt(Titanic, id.vars = c("Sex", "Survived"))
head(Titanic_cast)

cast(Titanic_cast, Sex+Survived~variable) # Casting by specifying columns and rows

cast(Titanic_cast, ...~variable)  # Melting by specifying only rows

cast(Titanic_cast, ...~Survived)

