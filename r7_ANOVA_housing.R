library(tidyr)

setwd("C:/Hogwarts/advanced_analytics/Datasets")
housing <- read.csv("Housing.csv")

hos <- housing %>% pivot_longer(c(Drug.A, Drug.B),
                                   names_to = "Drug",
                                   values_to = "Effect"
)

bartlett.test(hos$Effect ~ hos$Drug)

t.test(sopo$Effect ~ sopo$Drug, var.equal = T)