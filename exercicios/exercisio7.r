y <- 5

mult <- function(x){
  return(x*y)
}

mult(10)

View(USArrests)

prisoes <- function(estados, tiposPrisoes){
  result <- USArrests[estados,tiposPrisoes]
  return (sum(rowSums(result)))
}

a = prisoes(estados=c("Pennsylvania","Mississippi", "Nebraska"), tiposPrisoes=c("Rape","UrbanPop","Assault"))
a


minhasNotas_1 <- function(Exe_1=0, VA_1=0, Exe_2=0, Proj=0, VA_2=0, VA_3=0, Opt=0, threshold=0){
  Exe_1 <- ifelse(is.na(Exe_1), 0, Exe_1)
  Exe_2 <- ifelse(is.na(Exe_2), 0, Exe_2)
  VA_1 <- ifelse(is.na(VA_1), 0, VA_1)
  VA_2 <- ifelse(is.na(VA_2), 0, VA_2)
  Proj <- ifelse(is.na(Proj), 0, Proj)
  VA_3 <- ifelse(is.na(VA_3), 0, VA_3)

  Exe_1 <- mean(Exe_1)
  Exe_2 <- mean(Exe_2)
  
  print(Exe_1)
  
  if (min(Exe_1) < 0 || max(Exe_1) > 10 || VA_1 < 0 || VA_1 > 10){
    return("Notas inválidas")
  }
  
  if (min(Exe_2) < 0 || max(Exe_2) > 10 || VA_2 < 0 || VA_2 > 10 || Proj < 0 || Proj > 10){
    return("Notas inválidas")
  }
  
  if (VA_3 < 0 || VA_3 > 10){
    return("Notas inválidas")
  }
  
  if (Opt == 1){
    result = (5*Exe_1 + 5*VA_1) / 10

    nota <- "D"
    if (result > 9 & result < 10){
      nota <- "A"
    } else if (result > 7.5 & result < 9) {
      nota <- "B"
    } else if (result > 6 & result < 7.5){
      nota <- "C"
    }
    
    if (nota < threshold){
      return(paste(c("1VA Acima da média: ", nota)))
    } else if (nota == threshold) {
      return(paste(c("1VA Na média: ", nota)))
    } else {
      return(paste(c("1VA Abaixo da média: ", nota)))
    }
  } else if (Opt == 2){
    result = (3*VA_2 + 2*Exe_2 + 5*Proj) / 10
    
    nota <- "D"
    if (result > 9 & result < 10){
      nota <- "A"
    } else if (result > 7.5 & result < 9) {
      nota <- "B"
    } else if (result > 6 & result < 7.5){
      nota <- "C"
    }
    
    if (nota < threshold){
      return(paste(c("2VA Acima da média: ", nota)))
    } else if (nota == threshold) {
      return(paste(c("2VA Na média: ", nota)))
    } else {
      return(paste(c("2VA Abaixo da média: ", nota)))
    }
  } else if (Opt == 3) {
    va1 = (5*Exe_1 + 5*VA_1) / 10
    va2 = (3*VA_2 + 2*Exe_2 + 5*Proj) / 10
    
    l = c(va1, va2, VA_3)
    l <- sort(l, decreasing = T)
    print(l)
    result = (l[1] + l[2])/2
    print(result)
    
    nota <- "D"
    if (result > 9 & result < 10){
      nota <- "A"
    } else if (result > 7.5 & result < 9) {
      nota <- "B"
    } else if (result > 6 & result < 7.5){
      nota <- "C"
    }
    
    if (nota < threshold){
      return(paste(c("APROVADO: ", nota)))
    } else if (nota == threshold) {
      return(paste(c("APROVADO: ", nota)))
    } else {
      return(paste(c("NA FINAL: ", nota)))
    }
  } else {
    return("Argumento inválido")
  }
}

typeof(1)

minhasNotas_1(Exe_1=c(10,9,7,1,11,10), VA_1=8, Exe_2=7, Proj=7, VA_2=7, VA_3=10, Opt=1, threshold=7)
minhasNotas_1(Exe_1=c(10,9,5,1,5,10), VA_1=8, Exe_2=7, Proj=7, VA_2=7, VA_3=10, Opt=1, threshold=7)
minhasNotas_1(Exe_1=NA, VA_1=8, Exe_2=c(10,1,5), Proj=10, VA_2=8, VA_3=10, Opt=2, threshold=8)
minhasNotas_1(Exe_1=c(10,9,7,1,NA,NA), VA_1=NA, Exe_2=7, Proj=7, VA_2=7, VA_3=10, Opt=1, threshold=7)
minhasNotas_1(Exe_1=NA, VA_1=8, Exe_2=NA, Proj=10, VA_2=8, VA_3=10, Opt=2, threshold=8)
minhasNotas_1(Exe_1=c(5,8), VA_1=8, Exe_2=c(10,1,5), Proj=10, VA_2=8, VA_3=2, Opt=3, threshold=8)
minhasNotas_1(Exe_1=NA, VA_1=8, Exe_2=c(10,1,5), Proj=10, VA_2=8, VA_3=10, Opt=3, threshold=8)
minhasNotas_1(Exe_1=c(5,8), VA_1=8, Exe_2=c(10,1,5), Proj=c(2,4), VA_2=8, VA_3=2, Opt=3, threshold=8)
minhasNotas_1(Exe_1=10, VA_1=NA, Exe_2=7, Proj=7, VA_2=7, VA_3=10, Opt=1, threshold=7)

minhasNotas_1(Exe_1=c(8,9,NA), VA_1=5, Exe_2=9, Proj=5, VA_2=4, VA_3=1, Opt=1, threshold="C")
minhasNotas_1(Exe_1=c(8,9,10,9,9,8,6), VA_1=4, Exe_2=c(8,3,11,9,9,5), Proj=4, VA_2=4, VA_3=1, Opt=1, threshold="C")
minhasNotas_1(Exe_1=c(8,9,10,9,9,8,6), VA_1=7, Exe_2=c(8,3,10,9,9,5), Proj=8, VA_2=3, VA_3=1, Opt=3, threshold="B")              
minhasNotas_1(Exe_1=c(8,9,10,9,9,8,6), VA_1=7, Exe_2=c(8,3,10,9,9,5), Proj=8, VA_2=8, VA_3=1, Opt=2, threshold="B")
minhasNotas_1(Exe_1=c(8,9,10,9,9,8,6), VA_1=7, Exe_2=c(8,3,10,9,9,5), Proj=5, VA_2=5, VA_3=10, Opt=4, threshold="B")
