# Vetores, Operações com vetores e Vetores Nomeados

# Vetor de Strings
#cada elemente de um vetor deve ser separado por "," e entre  ""
# vetor = c(" ",..., " ")
vetor_caracter = c("Rodoflo","Terra","Cientista_Dados")
vetor_caracter

# Vetor de Floats
# Floats é um número decimal
vetor_numerico = c(1.90, 45.3, 300.5)
vetor_numerico

# vetor de valores complexos
valores_complexo = c(5.2 + 3i, 3.8+4i)
valores_complexo

# Vetor de valores lógicos
vetor_logico = c(TRUE,FALSE,TRUE,FALSE,FALSE)
vetor_logico

# Vetor de números inteiros
vetor_interger = c(2,4,6)
vetor_interger

# utilizando seq()
vetor1 = seq(1:10)
vetor1
is.vector(vetor1)

# utilizando rep() 
vetor2 = rep(1:5)
vetor2
is.vector(vetor2)

# Criando um vetor do número 10 até o número 50
c = c(10:50)
c

# Criando um vetor do número 10 até o número 50, coninetrvalo de 05 em 05
c1 = seq(10,50, by=5)
c1

# Comando lógico (TRUE ou FALSE)
c2 = (c>45)
c2


# me retorna os número 
c[c>45]

#Retorna a posição de número 46, 47, 48, 49, 50 (Entre 10 a 50 possui 41 itens
which(c>45)

#repetir cada item 0 quantidade que eu colocar no each
rep(1:4, each=4)

# Repitir 04 vezes a sequencia de 1 até 4
rep(1:4, 4)


# Indexação de vetores
a <- c(5,6,7,8,9)
a
a[1]
a[6]

b <- c("Rodoflo","Terra","Cientista_Dados")
b[1]
b[2]
b[3]
b[4]

# Combinar vetores
v1 <- c(2,3,5)
v2 <- c('aa',"bb","cc",'dd','ee')
c(v1, v2)

# Operação com Vetores
x = c(1,3,5,7)
y = c(2,4,6,8)

x*5
x + y
x - y
x * y
x / y

# Somando Vetores com números diferenes de elementos
alfa = c(10,20,30)
beta = c(1,2,3,4,5,6,7,8,9)
alfa + beta

# Vetor Nomeado
v = c('Nelson','Mandela')
v
names(v) = c("nome",'sobrenome')
v
v['nome']
