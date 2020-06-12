
# R can not allocate a vector that has size larger than RAM itself
x <- rep(0, 2^31-1)
as.integer(2^31-1)
as.integer(2^31)

# ODBC
library(RODBC)
xldb <- obdcConnect("xlopen")
xldata <- sqlFetch(xldb, "Worksheetname")



# SQLDF
library(sqldf)
Titanic_sql <- sqldf('select * from Titanic where Sex == "male"')
head(Titanic_sql)
nrow(Titanic_sql)

Titanic_sql2 <- sqldf('select Sex, Age from Titanic where Age > 30')
nrow(Titanic_sql2)
head(Titanic_sql2)


Titanic_sql3 <- read.csv.sql("Titanic.csv", sql = "select Name, Age, Sex from file where Age > 60")
nrow(Titanic_sql3)
Titanic_sql3

Titanic_sql4 <- sqldf('select Sex, avg(Age) from Titanic where Survived = 0 group by Sex')
Titanic_sql4

Titanic_sql5 <- sqldf('select Sex, avg(Age) from Titanic where Survived = 1 group by Sex')
Titanic_sql5