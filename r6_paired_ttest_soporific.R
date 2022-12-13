library(tidyr)

setwd("C:/Hogwarts/advanced_analytics/Datasets")
soporific <- read.csv("Soporific.csv")

sopo <- soporific %>% pivot_longer(c(Drug.A, Drug.B),
                                   names_to = "Drug",
                                   values_to = "Effect"
                                   )
bartlett.test(sopo$Effect ~ sopo$Drug)

t.test(sopo$Effect ~ sopo$Drug, var.equal = T)