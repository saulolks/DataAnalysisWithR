iris
View(iris)

a = apply(iris[ , 1:4], 2, FUN = mean)
a = apply(iris, 2, FUN = mean)
a = colMeans(iris)
a = apply(iris[ , 1:4], 2, FUN = mean)
a = sapply(iris[ , 1:4], 2, FUN = mean)
a = mapply(iris[ , 1:4], mean)

iris[,3]
iris$Petal.Length

i <- 0
for (i in 1:4){
  print(i)
}
print(i)

i <- 0
for (i in 1:4){
  next
}
print(i)

mapply(FUN=rep,c("Rural","Amo"),10:1)

student.df =  data.frame (nome= c ("Sue", "Eva", "Henry", "Jan"), sexo= c ("f", "f", "m", "m"), anos= c (21,15,17,19))
student.df$menor=ifelse(student.df$sexo=="m"&student.df$anos<18, "V", "F")
View(student.df)

USArrests
lapply(X=USArrests,FUN=sum)

x <- 0
while (x<100){
  x=x+2
}
x

for(i in 1:3){
  for(j in 1:10){
    print(j+i-1)
  }
}
