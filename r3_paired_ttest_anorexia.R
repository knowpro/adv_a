setwd("C:/Hogwarts/advanced_analytics/working_datasets ")
anrx <- read.csv("anorexia.csv")

cont <- subset(anrx, Treat=='Cont')
t.test( cont$Prewt, cont$Postwt, mu = 30, paired = T, alternative = 'l')