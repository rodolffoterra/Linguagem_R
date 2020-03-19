# Estudo de Caso - Limpesa, Transformação e Manipulação Dados de Voo

install.packages('hflights')
library(hflights)
library(dplyr)

#Criando um objetov tbl

flights <- tbl_df(hflights)
flights

# Resumindo os dados
str(flights)
glimpse(flights)

# vizualizando no consoler como dataframe
data.frame(head(flights))

# vizualizando no dataframe
View(data.frame(head(flights)))



# Filtrando os dados com slice
flights[flights$Month == 1 & flights$DayofMonth == 1, ]

#Aplicando Filter
filter(flights, Month == 1, DayofMonth == 1)
filter(flights, UniqueCarrier == "AA" | UniqueCarrier == "UA")
filter(flights, UniqueCarrier %in% c("AA", "UA"))

# Select os dados
# a função contains("xx") <- encontra a coluna que possui os nomes dentro que eu coloquei,
# não preciso saber o no me da coluna inteira. 
select(flights, Year, DayofMonth, contains("taxi"), contains("Delay"))


# Organizando os dados
flights %>%
  select(UniqueCarrier, DepDelay) %>%
  arrange(DepDelay)

flights %>%
  select(Distance, AirTime) %>%
  mutate(Spped = Distance/AirTime*60)

with(flights, tapply(ArrDelay, Dest, mean, na.rm = TRUE))
head(with(flights, tapply(ArrDelay, Dest, mean, na.rm = TRUE)))

# Função de Agregação
head(aggregate(ArrDelay ~ Dest, flights, mean))

# a Contagem está em ordem decrescente
View(flights %>%
  group_by(Month, DayofMonth) %>%
  tally(sort = TRUE))


# Month, e DayofMonth Organizado em ordem crescente
flights %>%
  group_by(Month, DayofMonth) %>%
  tally(sort = FALSE)

