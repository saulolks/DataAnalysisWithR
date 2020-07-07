library(tm)
library(wordcloud)
library(readr)

################# GERAR NUVEM DE PALAVRAS #################

# se tiver problemas com formatação de caractere
motivos <- read_csv("motivos.csv") 

# juntar todas as palavras num único campo
motivos <- paste(motivos$"2019.1", collapse = " ")

VS <- VectorSouce(motivos)
corpus <- Corpus(VS)

# coloca em minúsculo
corpus <- tm_map(corpus, content_transformer(tolower))
# remove pontuação
corpus <- tm_map(corpus, removePunctuation)
# remove espaço extra em branco
corpus <- tm_map(corpus, removeNumbers)
# remove stopwords
corpus <- tm_map(corpus, removeWords, stopwords("portuguese"))

inspect(corpus)

# converte para matriz
tdm <- as.matrix(TermDocumentMatrix(corpus))

# fornece as frequências ordenadas de cada palavra
fre <- sort(rowSums(tdm), decreasing=T)

# escolhendo um subconjunto dos dados
aux <- subset(fre, fre>2)

# plota o gráfico de barras dos termos mais frequentes
barplot(aux, las=2, col=rainbow(10))

# gera nuvem de palavras
wordcloud(corpus, min.freq=1, max.words=60, random.order=F, rot.per=0.35, colors=brewer.pal(8, "Dark2"))

############## BUSCAR PALAVRAS NO TWITTER ################

library(twitterR)
setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)

# consultando twitter
tweets <- searchTwitter("#stf", n=500, lang="pt")

# convertendo para formato de dataframe
tweets <- twListToDF(tweets)

################# ANÁLISE DE SENTIMENTO ###################

library(syuzhet)

s <- get_nrc_sentiment(tweets)