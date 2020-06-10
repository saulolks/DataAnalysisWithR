setwd("C:/Users/saulo/git/DataAnalysisWithR/Introduction")

remove(list = ls())

media <- c(30, 155, 50, 1829, 75)
dp <- c(6, 23, 8, 274, 12)

maria <- c(42, 102, 38, 2149, 97)
joana <- c(38, 173, 71, 1554, 70)

maria.n <- (maria-media)/dp
joana.n <- (joana-media)/dp

mean(maria)
mean(joana)

# ------------------------------------------
remove(list = ls())
vetor <- load("vetor.RData")

summ <- summary(vetor01, na.rm=TRUE)
faltosos.percent <- summ[7]/length(vetor01)

sev.eit <- vetor01[vetor01 > 7 & vetor01 < 8 & !is.na(vetor01)]
nin.one <- vetor01[(vetor01 > 9 | vetor01 < 1) & !is.na(vetor01)]

vetor01 <- vetor01[!is.na(vetor01)]
is.na(vetor01)