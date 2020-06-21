v <- c("M", "F", "M", "F", "F")
a <- factor(v) # transforma uma lista em um conjunto de categorias
table(a) # retorna um resumo sobre a quantidade cada categoria

v <- c("low", "high", "medium", "medium", "low", "low")
level <- factor(v, levels=c("low", "medium", "high"), ordered=TRUE) # cria um fator ordenado

level[3] # acesso ao elemento 3
level[c(1,2)] # acesso ao elemento 1 e 2
level[-1] # acesso a todos os elementos menos o 1

levels(v) <- c(levels(c), "normal") # adiciona um elemento aos níveis do fator
levels(v)[3] <- "normal" # altera todos os elementos com a categoria
# "medium" para a categoria "normal"

