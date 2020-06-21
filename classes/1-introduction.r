setwd("C:/Users/Aluno/Documents/DataAnalysisWithR/Introduction")

# funcoes estatisticas basicas
list = c(1,3,5,6,8) # atribuicao de vetor

media = mean(list)
soma = sum(list)
tamanho = length(list)
raiz = sqrt(81)
fatorial = factorial(10)

# funcoes auxiliares
help(mean) # documentacao da funcao
?factorial # alternativa ao help
example(mean) # mostra exemplos

# exercicio 1
resultado1 <- 334+456
resultado2 <- 900/45
resultado3 <- 899-844
resultado4 <- 73*73

X <- 133
Y <- 36
Z <- X+Y

Z

resultado5 = log(sqrt(Z))

?demo
demo(graphics)

ls()
rm(resultado1)
