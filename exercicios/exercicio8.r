setwd("C:/Users/saulo/git/DataAnalysisWithR/Exercicios")
getwd()

cats.data <- read.csv(
  file = "catsM.csv",
  header = T, # diz que a primeira linha contém os nomes das variáveis
  strip.white = T, # remove espaços em branco antes ou dps dos dados
  na.strings = "" # substitui células vazias por NA
)

View(cats.data)
str(cats.data)

unique(cats.data$Sex)

summary(cats.data)

# -----------------------------------------------------------------------

snail.data = read.csv(
  file = "Snail_feeding.csv",
  header = T,
  strip.white = T,
  na.strings = ""
)

str(snail.data)
View(snail.data)
snail.data <- snail.data[, 1:7]
snail.data$Sex <- factor(snail.data$Sex)
snail.data$Size <- factor(snail.data$Size)
levels(snail.data$Sex)[2] <- "female"
levels(snail.data$Sex)[3] <- "male"
levels(snail.data$Sex)[5] <- "male"

snail.data$Distance = as.numeric(snail.data$Distance)

snail.data[682, "Distance"] <- 0.58
snail.data[755, "Distance"] <- 0.356452

which(is.na(snail.data$Distance))
max(snail.data$Distance)

index <- which(duplicated(snail.data))
snail.data <- snail.data[-index,]

snail.data[8,6] <- 1.62

summary(snail.data)

cond <- snail.data$Size == "small" & snail.data$Sex == "female" & snail.data$Feeding == T
tiny.female.snail.dist <- max(snail.data[cond, ]$Distance, na.rm=T)
tiny.female.snail.dist

# -----------------------------------------------------------------------

sparrows.data = read.csv(
  file = "Sparrows.csv",
  header = T,
  strip.white = T,
  na.strings = ""
)

sparrows.table = read.table(file="Sparrows.csv", header=T, sep=",")

View(sparrows.table)
str(sparrows.data)

sparrows.data$Species <- factor(sparrows.data$Species)
levels(sparrows.data$Species)

cond <- sparrows.data$Species == "SSTS"
min.head.ssts <- min(sparrows.data[cond, ]$Head)
max.head.ssts <- max(sparrows.data[cond, ]$Head)

which(duplicated((sparrows.data)))

sparrows.data$Sex <- factor(sparrows.data$Sex)
levels(sparrows.data$Sex)
levels(sparrows.data$Sex)[2] <- "Female"
levels(sparrows.data$Sex)[3] <- "Male"

cond <- sparrows.data$Sex == "Female"
mean.tarsus.female <- mean(sparrows.data[cond,]$Tarsus)
cond <- sparrows.data$Sex == "Male"
mean.tarsus.male <- mean(sparrows.data[cond,]$Tarsus)

which(is.na(sparrows.data$Wing))
sparrows.data$Wing[64] <- 59
sparrows.data$Wing[250] <- 56.5
sparrows.data$Wing[806] <- 57

mean(sparrows.data$Wing)

Sparrows <- sparrows.data
Sparrows_Ordenado<-Sparrows[order(Sparrows$Wing,Sparrows$Head),]
