# calling odbc library 
library(RODBC) 
  
# connecting with database 
access_con<- odbcConnect("accessdata") 
  
# import separate table as separate R data frame 
coverage_page<- sqlFetch(access_con, "coverpage") 
ques1 <- sqlFetch(access_con, "questionnaire1") 
ques2 <- sqlFetch(access_con, "questionnaire2")

library(sqldf) 
subiris<- sqldf("select * from iris where Sepal_Width> 3") 
head(subiris)

iris_avg<-sqldf("select Species, avg(Sepal_Length),avg(Sepa- 
l_Width),avg(Petal_Length),avg(Petal_Width) from iris group by Species") 
  
colnames(iris_avg) <- c("Species","Sepal_L","Sepal_W","Petal_L","Petal_W") 
  
iris_avg

aggregate(iris[,-5],list(iris$Species),mean)

