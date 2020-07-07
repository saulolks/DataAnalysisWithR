# 1 VA
setwd("/home/saulo/Documentos/academics/data_analysis/1va")
getwd()

install.packages("ggplot2")
library(ggplot2)
library(dplyr)

# 1 questão
View(diamonds)

price = filter(diamonds, cut == "Very Good", carat > 0.7)$price
mean(price)

diamonds %>% filter(carat > 0.5, price == 806) %>% summarize(min(price))

length(filter(diamonds, cut == "Premium")$cut)/length(diamonds$cut)

# 2 questão
install.packages("gfortran", dependencies=TRUE)
install.packages("AER", dependencies=TRUE, repos='http://cran.rstudio.com/')
library(AER)

data("Fertility")
?Fertility
View(Fertility)

Fertility%>%select(age, work)%>%slice(35:50)

len_filter = Fertility %>% filter(morekids=="yes", work > 30) %>% summarize(count=n())
len_total = Fertility %>% summarize(count=n())

len_filter$count/len_total$count 

len_total = Fertility %>% filter(age >= 22, age <= 24) %>% summarize(count=n())
len_filter = Fertility %>% filter(age >= 22, age <= 24, gender1 == "male") %>% summarize(count=n())

len_filter$count/len_total$count

# 3 questão
library(tidyr)

Catfish = read.csv("Catfish.csv")
Treatment = read.csv("Treatment.csv")

View(Catfish)
head(Catfish)
head(Treatment)

Catfish <- Catfish %>% gather(key="Month", value="Weight", -ID, -Genus, -Species, -Sex, -Year, -Tank)
Catfish <- Catfish %>% unite(col="Species", Genus, Species, sep=".")

Catfish_Treatment <- merge(x=Catfish, y=Treatment, by="Tank")
View(Catfish_Treatment)

mean(filter(Catfish_Treatment, Food == "Treatment1", Month == "April", Sex == "Male")$Weight)

Catfish_Treatment$AcimaMedia<-ifelse(Catfish_Treatment$Weight>mean(Catfish$Weight),'V','F')

Catfish_Treatment %>% filter(AcimaMedia == "V") %>% group_by(Tank) %>% summarise(Count=n())

# 4 questão
Forbes2000 <- read.csv("Forbes2000.csv")
View(Forbes2000)

ranqueamento <- function(ranque, categoria){
    result <- Forbes2000 %>% filter(category == categoria) %>% arrange(desc(marketvalue))
    count <- (Forbes2000 %>% filter(category == categoria) %>% summarise(count=n()))$count
    
    if(count < ranque){
      return("Categoria/Rank não existe")
    }

    return(result[ranque,3])
}

ranqueamento(ranque=1, categoria="Banking")
ranqueamento(ranque=2, categoria="Oil & gas operations")
ranqueamento(ranque=10, categoria="Retailing")

ranqueamento(ranque=111, categoria="Diversified financials")
ranqueamento(ranque=33, categoria="Telecommunications servicos")
ranqueamento(ranque=49, categoria="Food drink & tobacco")

# 5 questão
media <- c(30,155,50,1829,75)
dp <- c(6, 23, 8, 274, 12)

maria <- c(42, 70, 40, 1500, 97)
teresa <- c(38, 173, 71, 1554, 70)
francisca <- c(50, 150, 40, 1900, 40)
joaquina <- c(40, 140, 80, 2093, 100)

maria.n <- (maria-media)/dp
teresa.n <- (teresa-media)/dp
francisca.n <- (francisca-media)/dp 
joaquina.n <- (joaquina-media)/dp

mean(maria.n)
mean(teresa.n)
mean(francisca.n)
mean(joaquina.n)

# 6 questão

View(airquality)
str(airquality[apply(airquality, 1, anyNA),])

str(airquality)

aux <- read.csv("tb.csv")
str(aux)

aux <- aux %>% slice(1348:4954)
str(aux[!apply(aux, 1, anyNA),])


































