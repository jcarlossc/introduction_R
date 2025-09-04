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

# Fatores (Factor)
# Usados para representar variáveis categóricas.
cores <- factor(c("azul", "verde", "azul", "vermelho", "verde"))
print(cores)
levels(cores)   # Níveis: "azul", "verde", "vermelho"

# Matrizes (Matrix)
# Estrutura bidimensional, apenas um tipo de dado.
mat <- matrix(1:9, nrow=3, ncol=3)
print(mat)

# Acesso
mat[2,3]    # Linha 2, coluna 3

# Arrays (Array)
# Semelhantes a matrizes, mas podem ter mais de duas dimensões.
arr <- array(1:12, dim = c(3,2,2))
print(arr)

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


