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