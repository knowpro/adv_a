setwd("C:/Hogwarts/advanced_analytics")
co2 = read.csv("CO2.csv")

t.test( co2$uptake, mu = 30, alternative = 't')