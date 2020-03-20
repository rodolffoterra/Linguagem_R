# Remodelando os Dados com Reshape

# Pivot (transposta da Matriz)
head(mtcars)
head(t(mtcars))

# Reshape
head(iris)
str(iris)
library(lattice)

# Distribuindo os dados verticalmente (long)
iris_modif <- reshape(iris,
                      varying = 1:4,
                      v.names = 'Medidas',
                      timevar = "Dimensoes",
                      times = names(iris)[1:4],
                      idvar = "ID",
                      direction = "long")
head(iris_modif)

bwplot(Medidas ~ Species | Dimensoes, data = iris_modif)

iris_modif_sp <- reshape(iris,
                      varying = list(c(1,3),c(2,4)),
                      v.names = c('Comprimento','Largura'),
                      timevar = "Parte",
                      times = c('Sepal','Petal'),
                      idvar = "ID",
                      direction = "long")
head(iris_modif_sp)

xyplot(Comprimento ~ Largura | Species, groups =  Parte,
       data = iris_modif_sp, auto.key = list(space ="right"))

