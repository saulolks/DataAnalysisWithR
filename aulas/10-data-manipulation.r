# download de arquivos

## saber para onde o R está apontando
setwd()
getwd()

fileURL <- "http://link.com/data.csv"
download.file(fileURL, destfile = "/home/git/data/data.csv", method = "curl")
list.files("/home/git/data") # listar arquivos do diretório

# |----------------|
# |-importar dados-|
# |----------------|

V1 <- read.table("pica-pau.txt", header=T, sep="", dec=".") # função para ler txt
### dec é o separador decimal e sep o separador de dados

caracol_data <- read.csv(
    file = "snail.csv",
    header = T, # diz que a primeira linha contém os nomes das variáveis
    strip.white = T, # remove espaços em branco antes ou dps dos dados
    na.strings = "" # substitui células vazias por NA
)

# - para converter fator para numérico é necessário converter para caractere antes

index <- which(duplicated(caracol_data)) # verificar se tem dados duplicados
caracol_data <- caracol_data[-index,] # removar a linha duplicada

sort(caracol_data$Depth) # ordernar vetores
caracol_data[order(caracol_data$Depth, caracol_data$Temp, decreasing=T),] # ordernar dataframes

write.csv(
    caracol_data,
    file=caracol_data.csv,
    row.names=False # não salvar o número das linhas
)

###############################################################################

# Juntar duas tabelas pelo ID em comum. "all" adicionar tbm linhas q não combinam com nenhum ID.
survey <- merge(x=dataset.a, y=dataset.b, by="ID.data", all=T)

# Se colunas de junção foram diferentes
survey <- merge(x=dataset.a, y=dataset.b, by.x="ID.a", by.y="ID.b", all=T)

# aggregate aplica uma função pra cada grupo nos dados
aggregate (formula = weight ~ Diet,
            FUN = mean,
            subset = Time<10 # só quando os frangos tem menos de 10 dias
            data = ChickWeight) # para cada Diet calcula a média de weight

install.package("dplyr")
library(dplyr)

filter(airquality, Temp<70, Wind>14) # filtra o dataset seguindo as regras
select(airquality, Temp, Wind) # retorna as colunas selecionadas
mutate(airquality, celsius=(airquality$Temp-32)/1.8) # cria uma coluna nova baseada na expressão
arrange(df, celsius) # ordena o dataframe
summarise(airquality, maxfahreneit=max(Temp), Contador=n()) # transforma um vetor num único elemento

temp_by_month <- group_by(airquality, Month) # retorna os grupos de Month
summarise(temp_by_month, maxfahreneit=max(Temp))

airquality %>%
group_by(Month) %>% 
filter(Temp > 80) %>% 
summarise(SomaTemp = sum(Temp), mediaWind=mean(Wind))
# operador %>% realiza operações em sequência

mtcars %>% slice(c(10,25)) # retorna apenas as linhas 10 e 25
mtcars %>% arrange(desc(mpg)) # retorna dataframe organizado de forma decrescente pela coluna mpg
mtcars %>% filter(cyl==6) # retorna as linhas onde cyl = 6
mtcars %>% summarise(media=mean(mpg), median(mpg)) # retorna um dataframe com media e mediana da coluna mpg

mtcars %>%
    group_by(vs) %>%
    summarise(media=mean(mpg), median(mpg)) # media e mediana por grupo de vs

mtcars %>%
    group_by(vs,am) %>%
    summarise(media=mean(mpg), median(mpg)) # media e mediana por grupo de vs e am


install.packages("tidyr")
library(tidyr)


















