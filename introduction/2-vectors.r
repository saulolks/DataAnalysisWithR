vetor <- c(1,2,3,4) # concatena valores em um vetor
vetor <- rep(1, 5) # gera um vetor com o valor 1 cinco vezes

# round, length, max, min, mean, sort, sum e prod são outras
# funções para vetores em r

vetor <- c(2:4)*2 # cria vetor de 2 a 4 e multiplica cada elemento por 2
vetor <- seq(1,5,2) # vetor de 1 a 5 incrementando de 2 em 2

summary(vector) # retorna alguns dados rápidos sobre o vetor

aux <- c(10, 1, 2, 5)
aux <- as.character(aux) # todos os elemetos são transformados em string

# acessar elementos de um vetor
vetor <- c(2,3,4,5)
vetor[3] # retorna o 3º elemento do vetor
vetor[c(1,2)] # retorna o 1º e 2º elemento do vetor
vetor(1:3) # retorna os elementos de 1 a 3 do vetor

# acesso lógico a elementos de um vetor
boat.ages <- c(143, 53, 356, 23)
boat.ages > 100 # retorna um vetor de true ou false
boat.ages[boat.ages > 100]

x <- c("a", "t", "a", "b", "z")
x %in% c("a", "b", "c", "d") # retorna um vetor de true ou 
# false indicando se cada elemento do vetor x está contido

v <- c(1,1,1,10,10)
v[which(v>3)] # which retorna a posição dos elementos que satisfazem a condição

x <- c(-3,-2,-1,1,2,3)
sum(x > 0) # conta os elementos maiores que 0
mean(x > 0) # calcula a proporção dos elementos maiores que 0
x[x < 0] <- 0 # atribui 0 a todos os elementos menores que 0

# Nomes
x <- c(1,2,3)
names(x) <- c("a", "b", "c")
x["a"]

v = vector(mode="numeric", length=3)
v <- c(v,5) # adiciona 5 a v

v <- c(1, 2, 3, NA, 6)
is.na(v) # retorna um vetor de true e false indicando onde possui NA
mean(v, na.rm=TRUE) # calcula a média dos elementos tirando o NA

# Normalização
a <- c(5, 3, 7, 5, 5, 3, 4)
a.z <- (a - mean(a))/sd(a)