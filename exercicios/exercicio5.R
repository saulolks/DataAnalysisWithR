mouse.color <- c("purple", "red", "yellow", "brown")
mouse.weight <- c(23, 21, 18, 26)

mouse.info <- data.frame("color"=mouse.color,"weight"=mouse.weight)

mouse.info[3,]
mouse.info[,1]
mouse.info[4,1]

View(airquality)
aux = airquality[airquality$Month == 5 & complete.cases(airquality),]
aux
min(aux $Ozone)

#aux = airquality[airquality$Ozone > 25 & airquality$Temp < 90 & complete.cases(airquality),]
aux = airquality[airquality$Ozone > 25 & airquality$Temp < 90,]
aux = aux[complete.cases(aux),]
mean(aux$Solar.R)

str(airquality[complete.cases(airquality),])

# genomas
genomas <- as.data.frame(read.csv("https://www.dropbox.com/s/vgh6qk395ck86fp/genomes.csv?dl=1"))
View(genomas)

aux <- genomas[genomas$Chromosomes > 40,]$Organism
View(aux)

aux <- genomas[genomas$Plasmids > 0 & genomas$Chromosomes>1, ]
View(aux)

groups <- factor(genomas$Groups) # descobrir qtd de grupos diferentes

# cancer
cancer_stats <- as.data.frame(read.csv("https://www.dropbox.com/s/g97bsxeuu0tajkj/cancer_stats.csv?dl=1"))
View(cancer_stats)

aux <- cancer_stats[cancer_stats$Female.Cases > cancer_stats$Male.Cases,]$Site
aux

cancer_stats$Male.DeathRate <- cancer_stats$Male.Deaths/cancer_stats$Male.Cases
cancer_stats$Female.DeathRate <- cancer_stats$Female.Deaths/cancer_stats$Female.Cases

View(cancer_stats)
