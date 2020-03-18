# Limpeza, Formatação e Manipulação de Dados em R
# dplyer = Transformação de Dados

# Instalando os pacotes
library(readr)
library(dplyr)

# Carregando o dataset
# read_csv coloca em um formato de tabela 

sono_df <- read_csv('E:/Portfólio/Linguagem_R_Treinamento/dplyr/sono.csv')
View(sono_df)
head(sono_df)
class(sono_df)
str(sono_df)

# Função glimpse() pode ser usada no lugar da função str()
glimpse(sono_df)

#Aplica mutate
#Criando uma nova coluna "peso_livras" apenas para vizualizar 
#os dados mas não foi incluidad no dataset
glimpse(mutate(sono_df, peso_libras = sono_total / 0.45359237))

# Contagem de histyograma
count(sono_df, cidade)
hist(sono_df$sono_total)

# Amostragem
# size represanta quantas linha você quer qu apareça
sample_n(sono_df, size = 10)

#select()
sleepData <- select(sono_df, nome, sono_total)
head(sleepData)
select(sono_df, nome)
select(sono_df, nome:pais)

#filter()
filter(sono_df, sono_total >= 16)
filter(sono_df, sono_total >= 16, peso >= 80)
# retorno meu conjunto cidade a onde (in) tem o nome dentro da lista
filter(sono_df, cidade %in% c('Recife','Curitiba'))

# arrange()
# organizado por ordem alfabética
sono_df %>% arrange(cidade) %>% head

sono_df %>%
  select(nome, cidade, sono_total) %>%
  arrange(cidade, sono_total) %>%
  head()

sono_df %>%
  select(nome, cidade, sono_total) %>%
  arrange(cidade, sono_total) %>%
  filter(sono_total >=16)

sono_df %>%
  select(nome, cidade, sono_total) %>%
  arrange(cidade, desc(sono_total)) %>%
  filter(sono_total >=16)

# mutate()
sono_df %>%
  mutate(novo_indice = sono_total / peso) %>%
  head()
head(sono_df)

sono_df %>%
  mutate(novo_indice = sono_total / peso,
         peso_libras = peso / 0.45359237) %>%
  head

# summarize()
sono_df %>%
  summarise(media_sono = mean(sono_total))

# média, mínimo, máximo e a quantidade de elementos
sono_df %>%
  summarise(media_sono = mean(sono_total),
            min_sono = min(sono_total),
            max_sono = max(sono_total),
            total = n())

# group_by()
sono_df %>%
  group_by(cidade) %>%
  summarise(avg_sono = mean(sono_total),
            min_sono = min(sono_total),
            max_sono = max(sono_total),
            total = n())

# Operador : %>%
head(select(sono_df, nome, sono_total))

# ou

sono_df %>%
  select(nome, sono_total) %>%
  head

sono_df %>%
  mutate(novo_indice = round(sono_total * peso)) %>%
  arrange(novo_indice) %>%
  select(cidade, novo_indice)

sono_df %>%
  mutate(novo_indice = round(sono_total * peso)) %>%
  arrange(desc(novo_indice)) %>%
  select(cidade, novo_indice)

View(sono_df)

