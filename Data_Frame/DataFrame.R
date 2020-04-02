# Data Frame

#Criação de dois vetores e juntamos em um único data frame  


#Figura 1
altura =c(1.65, 1.55, 1.7, 1.58, 1.55, 1.69, 1.73)

#Figura 2

peso =c(50, 70, 63, 60, 72, 85, 90)

#figura 03
df <- data.frame(altura, peso)
class(df)
df


# figura 04

nomes <- character()
pais <- numeric()
altura <- numeric()
codigo <- integer()

#Figura 05
df1 <- c(nomes, pais, altura,codigo)
df1

#Figura 06

nomes <- c('Marta','Amanda','Rafael','Alice','Joaquim')
pais <- c('Brasil','Argentina','Chile','Espanha','Chile')
altura <- c(1.68, 1.76, 1.69, 1.85, 1.76)
codigo <- as.integer(c(7965, 8890, 5001, 2183, 2166))
df1 <- data.frame(nomes, pais, altura,codigo)
df1

# Figura 07

olhos = c('castanho','castanho','azul','castanho','azul')
df2 = cbind(df1, olhos) 
df2

# Figura 08


str(df2)


#Figura 09

dim(df2)

#Figura 10

length(df2)
nrow(df2)
ncol(df2)

#figura 11

df2$nomes
df2$codigo

#Figura 12

df2[2,3]
df2[1,2]
df2[3,]
df2[,3]


#figura 13
table(df2$olhos)


# Figura 14
dim(mtcars)
head(mtcars)

# Figura 15
tail(mtcars)

View(df2)

#Figura 16
df2[altura < 1.7, ]

#Figura 17
df2[altura < 1.7, c('nomes', 'pais')]# Data Frame

#Criação de dois vetores e juntamos em um único data frame  


#Figura 1
altura =c(1.65, 1.55, 1.7, 1.58, 1.55, 1.69, 1.73)

#Figura 2

peso =c(50, 70, 63, 60, 72, 85, 90)

#figura 03
df <- data.frame(altura, peso)
class(df)
df


# figura 04

nomes <- character()
pais <- numeric()
altura <- numeric()
codigo <- integer()

#Figura 05
df1 <- c(nomes, pais, altura,codigo)
df1

#Figura 06

nomes <- c('Marta','Amanda','Rafael','Alice','Joaquim')
pais <- c('Brasil','Argentina','Chile','Espanha','Chile')
altura <- c(1.68, 1.76, 1.69, 1.85, 1.76)
codigo <- as.integer(c(7965, 8890, 5001, 2183, 2166))
df1 <- data.frame(nomes, pais, altura,codigo)
df1

# Figura 07

olhos = c('castanho','castanho','azul','castanho','azul')
df2 = cbind(df1, olhos) 
df2

# Figura 08


str(df2)


#Figura 09

dim(df2)

#Figura 10

length(df2)
nrow(df2)
ncol(df2)

#figura 11

df2$nomes
df2$codigo

#Figura 12

df2[2,3]
df2[1,2]
df2[3,]
df2[,3]


#figura 13
table(df2$olhos)


# Figura 14
dim(mtcars)
head(mtcars)

# Figura 15
tail(mtcars)

View(df2)

#Figura 16
df2[altura < 1.7, ]

#Figura 17
df2[altura < 1.7, c('nomes', 'pais')]

# Figura 18

colnames(df2) <- c('Var01','Var02','Var03','Var04','Var05')
rownames(df2) <- c('obs01','obs02','obs03','obs04','obs05')
df2

# figura 19
summary(df2)

df2$Var03

df2$Var04


# Carregar data frame
# o parametro header seguinifica cabeçalho
# df <- data.frame(read.csv('file = 'pacientes.csv', header = TRUE, sep = ','))


#figura 20

hist(df2$Var03)


# fugura 21

merge(df1,df2)

