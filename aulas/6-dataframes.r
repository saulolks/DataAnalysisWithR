A <- c(1,2,3,4)
B <- c("João", "Maria", "José", "Pedro")
C <- c(3.0, 5.0, 2.5, 1.0)

meu.banco <- data.frame("ID"=A, "Nome"=B, "Peso"=C, stringsAsFactors=FALSE)
str(meu.banco) # mostrar estrutura do dataframe

head(ChickWeight) # retorna as 6 primeiras linhas do dataset
tail(ChickWeight) # retorna as duas últimas linhas
View(ChickWeight) # abre o dataframe completo em uma nova janela
summary(ChickWeight) # mostra um sumário estatístico de todas as colunas do dataset

names(ToothGrowth) # retorna os nomes das colunas
ToothGrowth$len # retorna a coluna 'len'
mean(ToothGrowth$len) # média da coluna 'len'
head(ToothGrowth[c("len", "supp")]) # acesso a colunas específicas

names(df)[1] <- "a" # modifica o nome da primeira coluna
names(df)[names(df) == "old.name"] <- "new.name" # modifica o nome da coluna 'old.name'
survey <- data.frame("index"=c(1,2,3,4,5), "age"=c(24,25,26,27,28))
survey$sex <- c("m", "m", "f", "f", "m") # adiciona uma nova coluna ao dataframe

sex <- c("m", "m", "f", "f", "m")
survey <- cbind(survey, sex) # adiciona uma nova coluna ao dataframe

data <- data.frame(Nome=character(0), Idade=numeric(0), stringsAsFactors=F)
data[1,] <- c("José", 30) # adiciona informações ao dataframe

df[1,] # retorna a linha 1
df[,5] # retorna a coluna 5
df[1:5, 2] # retorna a linha 1:5 e coluna 2

ToothGrowth.VC <- ToothGrowth[ToothGrowth$supp == "VC", ] # retorna as linhas onde sup é igual a 'VC'
ToothGrowth.OJ.a <- ToothGrowth[ToothGrowth$supp == "VC" & ToothGrowth$dose < 1, ]

subset(x=ToothGrowth, subset=ToothGrowth$supp == "VC" & ToothGrowth$dose < 1, select = c("len", "dose"))

health <- data.frame("age"=c(32,24,53,19), "height"=c(1.75,1.65,1.5,1.92),"weight"=c(70,65,62,79))
with(health, height/weight^2) # calcula o IMC com as colunas de 'health'

x <- airquality[complete.cases(airquality),] # retorna apenas as linhas que não contém NAs
