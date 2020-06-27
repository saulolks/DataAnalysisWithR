x <- 5
if (x < 0){
    print("negative")
} else if(x > 0){
    print("positive")
} else{
    print("0")
}

a <- c(5,7,2,9)
# ifelse(<condicao>, <se a condicao for true>, <se a condicao for false>)
ifelse(a%%2==0, "even", "odd") # resultado ("odd", "odd", "even", "odd")

i <- 1
while (i < 6){
    print(i)
    i = i + 1
}

vetor <- c("a", "b", "c", "d")
for (item in vetor) {
    print(item)
}

for (k in 1:100){
    print(k)
}

# calcular a média das colunas de airquality
saida <- vector("double", ncol(airquality)) # cria um vetor de double com ncol elementos
for (i in seq_along(airquality)) {
    saida[i] <- mean(airquality[, i], na.rm = T)
}

for (i in 1:100) {
    if (i == 90) {
        break # quebra o loop
    } else if (i == 50) {
        next # pula pra próxima iteração
    }
}

# repeat: executa o código em loop sem uma condição, só para quando encontrar o break
repeat {
    print("hello")
    if (T){
        break
    }
}