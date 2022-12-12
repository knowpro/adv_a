library(tidyverse)
table4a

gather(table4a,"1999","2000",key="Year",value="Cases")

gather(table4a,"1999","2000",key="Year",value="Cases",convert=T)

spread(table4a,key="year",value="Cases")

table2
spread(table2,key="type",value="count")

table2 %>%
  spread(key="type",value="count")

#-------------------------------------------------------

table3

separate(table3,"rate",into=c("cases","population"),sep="/",convert=T)

separate(table3,"year",into=c("cent","yr"),sep=2,convert=T)

#______________________________________________________________

table5

unite(table5,"New_Yr","century","rate","year",sep="_")

#-------------------------------------------------------------

stocks

spread(stocks,key="year",value="return")


