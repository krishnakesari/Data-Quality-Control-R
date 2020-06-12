
Titanic <- read.csv("Titanic.csv")
str(Titanic)

levels(factor(Titanic$Sex))
table(factor(Titanic$Sex))

# Factors from numerical variables
Titanic$Fare_cut <- cut(Titanic$Fare, breaks = 5, labels =c("Low", "Middle Low", "Middle", "Middle High", "High"))
levels(Titanic$Fare_cut)
table(Titanic$Fare_cut) # Counting quantities based on the breaks

data.frame(table(Titanic$Fare_cut))


# Date Processsing

dt <- as.Date("1970-01-01")
as.numeric(as.Date(dt))

dt2 <- as.Date("1970-01-02")
as.numeric(as.Date(dt2))

## Creating a date by specifying a format
as.Date("Jan-01-1970", format = "%b-%d-%Y")

library(lubridate)
mdy("Jan-01-1970")

# Parsing dates form text

date_text <- c("Second chapter due on 2013, august, 24", "third on 2013 aug 23")
ymd(date_text)

date <- as.POSIXct("23-07-2013", format = "%d-%m-%Y", tz = "UTC")
date

# Changing month from 7 to 8
date <- as.POSIXct(format(date, "%Y-8-%d"), tz = "UTC")
date
# Using libridate to change month
month(date) <- 9
date

# Accessing systems time and date
current_time <- now()
current_time

# Changing time zone
current_time_gmt <- with_tz(current_time, "GMT")
current_time_gmt

