setwd("C:/Hogwarts/advanced_analytics/Datasets ")
plq <- read.csv("Plaque.csv")

View(plq)

library(tidyr)

plq_pivot <- pivot_wider(plq, id_cols = c("Id","product"),
                         names_from = "trt", values_from = "score")


p1 <- subset(plq_pivot, product=='P1')
t.test(P1$Before, P1$After, paired=T, alternative = 'g' )

p2 <- subset()

