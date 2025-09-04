# Estrutura de dados em Linguagem R.

# Vetores (Vector)
# Coleção de elementos do mesmo tipo (numéricos, caracteres, lógicos).
# Criando vetores
vetor_num <- c(10, 20, 30, 40)
vetor_char <- c("R", "Python", "SQL")
vetor_log <- c(TRUE, FALSE, TRUE)

print(vetor_num)   # [1] 10 20 30 40
print(vetor_char)  # [1] "R" "Python" "SQL"
print(vetor_log)   # [1]  TRUE FALSE  TRUE

# Operações vetorizadas
vetor_num * 2      # Multiplica cada elemento por 2

# Manipulação de vetor
vet <- c(10, 20, 30, 40)

length(vet)       # Número de elementos → 4
sort(vet)         # Ordena crescente
rev(vet)          # Inverte a ordem
unique(c(1,1,2,3))# Valores únicos
which(vet > 20)   # Índices onde condição é TRUE


# Fatores (Factor)
# Usados para representar variáveis categóricas.
cores <- factor(c("azul", "verde", "azul", "vermelho", "verde"))
print(cores)
levels(cores)   # Níveis: "azul", "verde", "vermelho"

# Manipulação de fatores
cores <- factor(c("azul", "verde", "azul", "vermelho"))

levels(cores)       # Níveis (categorias)
nlevels(cores)      # Número de níveis
table(cores)        # Frequência de cada categoria


# Matrizes (Matrix)
# Estrutura bidimensional, apenas um tipo de dado.
mat <- matrix(1:9, nrow=3, ncol=3)
print(mat)

# Acesso
mat[2,3]    # Linha 2, coluna 3

# Manipulação de matrizes.
mat <- matrix(1:9, nrow=3)

dim(mat)            # Dimensões da matriz
nrow(mat)           # Número de linhas
ncol(mat)           # Número de colunas
t(mat)              # Transposta
rowSums(mat)        # Soma das linhas
colSums(mat)        # Soma das colunas
apply(mat, 1, mean) # Média por linha


# Arrays (Array)
# Semelhantes a matrizes, mas podem ter mais de duas dimensões.
arr <- array(1:12, dim = c(3,2,2))
print(arr)

# Manipulação de arrays
arr <- array(1:12, dim = c(3,2,2))

dim(arr)             # Mostra dimensões
apply(arr, 1, sum)   # Soma ao longo da 1ª dimensão


# Data Frames (DataFrame)
# Tabelas bidimensionais, onde cada coluna pode ter tipos diferentes.
df <- data.frame(
  Nome = c("Ana", "Bruno", "Carlos"),
  Idade = c(23, 35, 28),
  Aprovado = c(TRUE, FALSE, TRUE)
)
print(df)

# Acesso
df$Nome
df[1, "Idade"]

# Manipulação de data frames
df <- data.frame(
  Nome = c("Ana", "Bruno", "Carlos"),
  Idade = c(23, 35, 28),
  Nota = c(8.5, 7.0, 9.2)
)

names(df)           # Nomes das colunas
nrow(df); ncol(df)  # Número de linhas e colunas
str(df)             # Estrutura do data frame
head(df, 2)         # Primeiras linhas
tail(df, 1)         # Última linha
subset(df, Idade > 25)  # Filtrar linhas
df$Nome             # Acessa coluna
df[1, "Nota"]       # Acessa célula


# Listas (List)
# Coleções que podem armazenar diferentes tipos de dados (vetores, matrizes, 
# data frames, até funções).
lista <- list(
  numeros = c(1,2,3),
  letras = c("A", "B", "C"),
  matriz = matrix(1:4, nrow=2),
  logico = TRUE
)

print(lista)
lista$numeros   # Acessa vetor dentro da lista

# Manipulação de listas.
lista <- list(
  numeros = 1:5,
  letras = c("A", "B", "C")
)

names(lista)         # Nomes dos elementos
length(lista)        # Número de itens
lista$numeros        # Acessa elemento pelo nome
lista[[2]]           # Acessa pelo índice
append(lista, list(logico=TRUE))  # Adiciona novo elemento


# Tibble (do pacote tibble / tidyverse)
# É uma versão moderna do data frame, mais amigável.
# Precisa do pacote tibble
# install.packages("tibble")
library(tibble)

tb <- tibble(
  Nome = c("Ana", "Bruno", "Carlos"),
  Idade = c(23, 35, 28)
)

print(tb)

# Manipulação de tibble.
# install.packages("tibble")
library(tibble)

tb <- tibble(
  Nome = c("Ana", "Bruno", "Carlos"),
  Idade = c(23, 35, 28)
)

glimpse(tb)   # Estrutura mais amigável que str()


# Listas nomeadas
#Um tipo especial de lista, útil como mapa/dicionário.
pessoa <- list(
  nome = "José",
  idade = 30,
  cidade = "Recife"
)
print(pessoa$nome)   # "José"

# Estruturas especiais
# NULL → ausência de valor.
# NA → valor faltante (missing value).
# NaN → resultado indefinido (ex: 0/0).
# Inf / -Inf → infinito positivo ou negativo.
x <- NULL
y <- NA
z <- NaN
w <- Inf

print(is.null(x))   # TRUE
print(is.na(y))     # TRUE
print(is.nan(z))    # TRUE
print(is.infinite(w)) # TRUE

# Funções de Transformação Gerais
# Conversões
as.vector(df$Idade)   # Data frame → vetor
as.matrix(df)         # Data frame → matriz
as.list(df)           # Data frame → lista
as.data.frame(lista)  # Lista → data frame

# Operações de Agregação
summary(df)           # Resumo estatístico
aggregate(Nota ~ Idade, data=df, mean)  # Média agrupada por idade

# Combinação de Estruturas
# Unir vetores
c(1,2,3,4,5)

# Juntar colunas e linhas
cbind(1:3, 4:6)    # Colunas
rbind(c(1,2,3), c(4,5,6))  # Linhas

# Unir data frames
df2 <- data.frame(Nome="Daniel", Idade=40, Nota=6.5)
df3 <- rbind(df, df2)

