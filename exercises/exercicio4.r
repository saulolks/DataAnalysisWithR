setwd("C:/Users/saulo/git/DataAnalysisWithR/introduction")

nomes = c("João", "Paula", "Maria", "Ingrid", "José", "Marcos")
pesos = c(80,65,70,58,78,70)
alturas = c(1.7, 1.66, 1.65, 1.6, 1.76, 1.7)
imc = pesos/(alturas^2)

lista_pessoas = list("nome"=nomes, "peso"=pesos, "altura"=alturas, "imc"=imc)

lista_pessoas$nome[1]
lista_pessoas[[4]][3]

chuvas <- load("chuvas.RData")
View(chuvas)
