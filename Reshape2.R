Titanic2 <- read.csv("Titanic.csv")
colnames(Titanic2)

library(reshape2)
# Melting Titanic
molten_titanic <- melt(Titanic2, idvars=c("Name", "Sex"))
head(molten_titanic)

# Casting Titanic
cast_titanic <- dcast(molten_titanic, Sex~variable)
head(cast_titanic)

cast_titanic2 <- dcast(molten_titanic, Sex+Name~variable)
head(cast_titanic2)

# Aggrgating values
agg_titanic <- acast(molten_titanic, Sex+Name~variable)
head(agg_titanic)

