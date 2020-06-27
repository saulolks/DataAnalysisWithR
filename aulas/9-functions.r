media <- function(dados){
    med - sum(dados)/length(dados)
    return(dados)
}

sub <- function(x, y=100){
    y <<- y # atualizar a variável globalmente
    return(x-y)
}

addPercent <- function(x, mult = 100, ...){
    percent <- round(x*mult, ...)
} # '...' serve para passar parâmetro para uma função interna
