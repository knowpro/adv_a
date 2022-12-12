setwd("C:/Hogwarts/advanced_analytics")
pg = read.csv("PlantGrowth.csv")

t.test( pg$weight, mu = 6, alternative = 't')