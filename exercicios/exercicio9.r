install.packages("dplyr")
install.packages("tidyr")
library(dplyr)
library(tidyr)

# questão 1
df = data.frame(Theoph)
str(df)

select(df,Dose)
filter(df,Dose>5)
df%>%slice(10:20)

df%>%filter(Dose>5, Time>mean(Time))

df%>%arrange(desc(Wt))
df%>%arrange(Wt,desc(Time))

df%>%summarize(tendencia=Time-mean(Time))
df%>%summarize(max(conc))

# questão 2
setwd("C:/Users/saulo/git/DataAnalysisWithR/exercicios")
getwd()

df1 = read.csv("673598238_T_ONTIME_REPORTING.csv", quote="\"", sep=",")
df2 = read.csv("L_UNIQUE_CARRIERS.csv", quote="\"", sep=",")

str(df1)
str(df2)

View(df1)
View(df2)

# questão 3
TB = read.csv("http://stat405.had.co.nz/data/tb.csv")
View(TB)

df <- TB %>% gather(key = "Informacao", value = "valor", -iso2, -year)
