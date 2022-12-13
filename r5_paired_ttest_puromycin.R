setwd("C:/Hogwarts/advanced_analytics/Datasets")
prmc = read.csv("Puromycin.csv")

bartlett.test(prmc$rate, prmc$rate)
