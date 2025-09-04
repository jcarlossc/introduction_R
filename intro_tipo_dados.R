# Tipos de dados da Linguagem R
# Tipos básicos (atomic types)
# São os blocos fundamentais de dados em R:

# Números inteiros, representados com o sufixo L.
inteiro <- 44L
print(inteiro)
print(class(inteiro))
print(is.numeric(inteiro))

# Representa números reais (decimais ou inteiros, mas armazenados como double).
ponto.flutuante <- 44.4
print(ponto.flutuante)
print(class(ponto.flutuante))
print(is.numeric(ponto.flutuante))

# Textos, cadeias de caracteres entre aspas simples ou duplas.
nomes <- "TESTE"
print(nomes)
print(class(nomes))
print(is.character(nomes))

# Valores lógicos: TRUE ou FALSE (também podem ser abreviados como T e F).
logico <- TRUE
print(logico)
print(class(logico))
print(is.logical(logico))

# Números complexos (com parte real e imaginária).
complexo <- 3 + 2i
print(complexo)
print(class(complexo))
print(is.complex(complexo))

# Dados brutos, usados para representar bytes.
dado.bruto <- charToRaw("A")
print(dado.bruto)
print(class(dado.bruto))

# Estruturas de dados (objetos compostos)
# Além dos tipos atômicos, R organiza dados em estruturas:

# Conjunto de elementos do mesmo tipo.
vetor <- c(1,2,3,4,5)
print(vetor)
print(class(vetor))

# Usado para variáveis printegóricas (ex.: níveis de um questionário).
sexo <- factor(c("M", "F", "M", "F"))
print(sexo)
print(class(sexo))
print(levels(sexo))

# Estrutura bidimensional, mas todos os elementos devem ser do mesmo tipo.
matriz <- matrix(1:6, nrow=2, ncol=3)
print(matriz)
print(class(matriz))

# Array(arranjo) Generalização da matriz para mais de duas dimensões.
arranjo <- array(1:8, dim=c(2,2,2))
print(arranjo)
print(class(arranjo))

# Lista: Estrutura heterogênea: pode conter diferentes tipos de dados.
lista <- list(nome="Carlos", idade=48, notas=c(8,9,10))
print(lista)
print(class(lista))

# Tabela(dataframe) Estrutura tabular (colunas podem ser de tipos diferentes).
df <- data.frame(
    nome=c("Ana","Pedro"),
    idade=c(23,30),
    aprovado=c(TRUE,FALSE)
)
print(df)
print(class(df))

# Classes especiais
# R também possui classes específicas derivadas dos tipos básicos:

# Date: para datas.
data <- as.Date("2025-09-02")
print(class(data))

# POSIXct / POSIXlt: para data e hora.
data_hora <- as.POSIXct("2025-09-02 13:45:00")
print(class(data_hora))




