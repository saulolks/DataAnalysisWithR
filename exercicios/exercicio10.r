library(tm)
library(wordcloud)
library(readr)

speech <- read.csv("ihaveadream_speech.csv", header=F)
speech <- paste(speech$"V1", collapse = " ")

corpus <- Corpus(VectorSource(speech))
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removeWords, stopwords("english"))

matrix <- as.matrix(TermDocumentMatrix(corpus))
sorted_terms <- sort(rowSums(matrix), decreasing=T)

barplot(sorted_terms[1:50], las=2, col=rainbow(10))
wordcloud(corpus, min.freq=1, max.words=60, random.order=F, rot.per=0.35, colors=brewer.pal(8, "Dark2"))

library(twitteR)

consumer_key = "9h8Dw0nErYmNEozFhQU15QmMu"
consumer_secret = "1PZp4CQLIjFQ5cLltYGizDFzta9EpVP6l1IkTQflDP9Qdkv8bm"
access_token = "925588118123753472-64eFMkLmXw5gdV9ZW3bxH032SNfbh2M"
access_secret = "B0Gv5nnII4VTgm9X4vsFTt6NxLJjLFTLa1BGgjcTBjNqu"

setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)
tweets <- searchTwitter("black lives matter", n=1000)
tweets <- twListToDF(tweets)

str(tweets)

library(syuzhet)

s <- get_nrc_sentiment(tweets$text)
s

barplot(colSums(s), las=2,col = rainbow(10), ylab = "Quantidade",main = "Sentimento dos tweets")
