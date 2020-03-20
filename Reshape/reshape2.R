# Remodelando os Dados com Reshape2

install.packages("reshape2")
library(reshape2)

# Criando um dataframe
df = data.frame(nome = c('Zico','Pele'),
                chuteira = c(40,42),
                idade = c(34, NA),
                peso = c(93, NA),
                altura = c(175, 178))

df

# Derretendo o dataframe - Função melt()

df_wife = melt(df, id = c('nome', 'chuteira'))
df_wife

# Removendo NA
df_wife = melt(df, id = c("nome", 'chuteira'), na.rm = TRUE)
df_wife

# Esticando o dataframe

dcast(df_wife, formula = chuteira + nome ~ variable)
dcast(df_wife, formula = nome + chuteira ~ variable)
dcast(df_wife, formula = ... ~ variable)


 dados <- data.frame(
    ozone = c(41,36,12,18,NA,28),
    solar = c(190,118,149,313,NA, NA),
    wind = c(7.4, 8.0, 12.6, 11.5, 14.3, 14.9),
    temp = c(67,72,74,62,56,66),
    month = c(5,5,5,5,5,5),
    day = c(1,2,3,4,5,6)
 )
 dados
 class(dados)
df_wide <- melt(dados) 
df_wide

#Inserindo mais duas variáveis
df_wide <- melt(dados, id.vars = c('month','day'))
head(df_wide)

df_wide <- melt(dados, id.vars = c('month','day'),
                variable.name = "climate_variable",
                value.name = 'climate_values')
head(df_wide)

# Função dcast() - long

df_wife <- melt(dados, id.vars = c('month','day'))
head(df_wife)

df_long <- dcast(df_wife, month + day ~ variable)
head(df_long)
