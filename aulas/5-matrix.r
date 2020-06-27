m <- matrix(a, b, c) # a: elementos | b: n linhas | c: n colunas
dim(m) # dimensão da matriz
nrow(m) # n linhas
ncol(m) # n colunas

A <- matrix(1:12, 3, 4)
View(A) # visualiza a matriz
A <- matrix(0, 3, 4) # cria uma matriz de zeros
A <- matrix(nrow = 3, ncol = 4) # cria uma matriz de NA
rownames(A) <- c("linha1", "linha2", "linha3") # renomeia as linhas
colnames(A) <- c("coluna1", "coluna2", "coluna3") # renomeia as colunas

coluna5 <- c(0,0,0)
linha4 <- c(1,1,1,1,1)
A <- cbind(A, coluna5) # adiciona uma coluna à matriz
A <- rbind(A, linha4) # adiciona uma linha à matriz

# acesso aos elementos
A[3,1]
A[,1]
A[3,]
A[1:2, 1:2]
A[A[,]>3]

# operações com matrizes
A+B
A+2
A*3
A%*%B # multiplicação matricial
t(A) # matriz transposta
colMeans(A) # média das colunas
colSums(A) # soma das colunas