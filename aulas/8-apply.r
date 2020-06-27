A <- matrix(0, 3, 4) # cria uma matriz de zeros

# X: dados (A menos coluna 1 e 2) | MARGIN: dimensão (2: coluna) | FUN: sum = soma
apply(X = A[,-c(1,2)], MARGIN = 2, FUN = sum)

# lapply: a saída é uma lista
# sapply: a saída é um vetor


# criar uma função pra passar pra função
soma <- function(x){
    return (sum(x))
}
sapply(X = A[,-c(1,2)], MARGIN = 2, FUN = soma)

sapply(X = A[,-c(1,2)], FUN = class) # retorna as classes das colunas
sapply(X = A[,-c(1,2)], FUN = length) # retorna os tamanhos das colunas

dataset_loja$fornecedores <- sample(c("Fornecedor 1", "Fornecedor 2", "Fornecedor 3",
    "Fornecedor 4"), size = 20, replace = T)

#      onde aplicar a função | onde dividir as classes    | função pra aplicar
tapply(dataset_loja[,"preco"], dataset_loja[,"fornecedor"], mean)
# retorna a média de preço de cada fornecedor

# recebe uma função e aplica para os dados seguintes
mapply(FUN = function(x,y,z)((x*y) + z), dataset_loja[, c("preço")], dataset_loja[, c("total_estoque")], dataset_loja[,c("total_vendas")])

aux = c("eu", "amo", "a", "rural")
mapply(FUN = paste, aux, "**", sep="") # concatena cada string com o '**', sep determina o termo delimitador
mapply(FUN = rep, "Eu amo a rural", 1:5) # repete a string de 1 a 5 vezes