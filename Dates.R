
as.Date("1970-07-01")
as.numeric(as.Date("1970-07-01"))

as.Date("Jan-01-1970", format = "%b-%d-%Y")

library(lubridate)
mdy("Jan-01-1970")

date <- as.POSIXct("23-07-2013",format = "%d-%m-%Y", tz = "UTC")
date

wday(date, label = T)
tz(date)

