
getwd()

persDir <- "C:/Users/ju0d/Documents"
setwd(persDir)

TeamDir <- "N:/Team/Jonathan"
setwd(TeamDir)

#save.image()

#load(".RData")

#How to update R
#install.packages("installr") #install this package if not already
#library(installr) #load the package
#updateR()         #run the updateR function and this will update the r version in your system


#How to uninstall a package
remove.packages("runcharter",lib = "C:/Program Files/R/R-3.6.1/library")
#.libPaths() this gives the path to installed packages
 
#rm(runcharter)


x <- "R Tutorial"
gsub("ut","ot",x)

x<- c("Flight1","Flight2")
gsub("Flight","",x)

library(gapminder)
gapminder %>% 
  arrange(year)%>%
  with(sum())

version
#.libPaths() this gives the path to installed packages
require(zoo)
?rollmean()

library(zoo)
head(zoo)

#just to check git pull


columns <- quos(Metric_name, Indicator_Code)

#data for for run chart
main_data <- shinyData%>%
  mutate(grp=paste(Metric_name, Indicator_Code))%>%
  select(date=ReportDate,grp,y=Performance)%>%
  filter(date <= '2019-08-01')%>%
  arrange(grp,date)%>%
  View()


?quos


#columns <- quos(a,b,c)
columns <- quos("Indicator Name", "Business Unit", "Hospital Site")

grp=paste(!!!columns, sep="_")

RunData$sustained%>%
  separate(grp,sapply(columns,quo_name),sep="_") %>%
  View()

#it appears it did not work
