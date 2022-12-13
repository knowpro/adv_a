setwd("C:/Hogwarts/advanced_analytics/Datasets")

agr <- read.csv("Yield.csv")
agr_ols <- aov(Yield ~ Treatments, data = agr)
anova(agr_ols)

#Tuckeys Test
