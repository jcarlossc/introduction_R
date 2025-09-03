# Tipos de dados da Linguagem R
# Tipos básicos (atomic types)
# São os blocos fundamentais de dados em R:

# Números inteiros, representados com o sufixo L.
inteiro <- 44
cat("Inteiro:", inteiro, "\n")
cat("Tipo:", class(inteiro), "\n")
cat("É numérico?", is.numeric(inteiro), "\n\n")

# Representa números reais (decimais ou inteiros, mas armazenados como double).
ponto.flutuante <- 44.4
cat("Ponto flutuante:", ponto.flutuante, "\n")
cat("Tipo:", class(ponto.flutuante), "\n")
cat("É numérico?", is.numeric(ponto.flutuante), "\n\n")

# Textos, cadeias de caracteres entre aspas simples ou duplas.
nomes <- "TESTE"
cat("String:", nomes, "\n")
cat("Tipo:", class(nomes), "\n")
cat("É caracter?", is.character(nomes), "\n\n")

# Valores lógicos: TRUE ou FALSE (também podem ser abreviados como T e F).
logico <- TRUE
cat("Lógico:", logico, "\n")
cat("Tipo:", class(logico), "\n")
cat("É booleano?", is.logical(logico), "\n\n")

# Números complexos (com parte real e imaginária).
complexo <- 3 + 2i
cat("complexo:", complexo, "\n")
cat("Tipo:", class(complexo), "\n")
cat("É complexo?", is.complex(complexo), "\n\n")

# Dados brutos, usados para representar bytes.
dado_bruto <- charToRaw("A")
cat("RAW(dado bruto):", dado_bruto, "\n")
cat("Tipo:", class(dado_bruto), "\n\n")

# Estruturas de dados (objetos compostos)
# Além dos tipos atômicos, R organiza dados em estruturas:

# Conjunto de elementos do mesmo tipo.
vetor <- c(1,2,3,4,5)
cat("Vetor:", vetor, "\n")
cat("É numérico?", class(vetor), "\n\n")

# Usado para variáveis categóricas (ex.: níveis de um questionário).
sexo <- factor(c("M", "F", "M", "F"))
cat("Variáveis categóricas:", sexo, "\n")
cat("É factor?", class(sexo), "\n")
cat("Níveis:", levels(sexo), "\n\n")

# Estrutura bidimensional, mas todos os elementos devem ser do mesmo tipo.
matriz <- matrix(1:6, nrow=2, ncol=3)
cat("Matriz:", matriz, "\n")
cat("É matriz?", class(matriz), "\n\n")

# Array(arranjo) Generalização da matriz para mais de duas dimensões.
arranjo <- array(1:8, dim=c(2,2,2))
cat("Array:", arranjo, "\n")
cat("É array?", class(arranjo), "\n\n")

# Lista: Estrutura heterogênea: pode conter diferentes tipos de dados.
lista <- list(nome="Carlos", idade=48, notas=c(8,9,10))
cat("É lista?", class(lista), "\n\n")

# Tabela(dataframe) Estrutura tabular (colunas podem ser de tipos diferentes).
df <- data.frame(
    nome=c("Ana","Pedro"),
    idade=c(23,30),
    aprovado=c(TRUE,FALSE)
)
cat("É Tabela?", class(df), "\n\n")

# Classes especiais
# R também possui classes específicas derivadas dos tipos básicos:

# Date: para datas.
data <- as.Date("2025-09-02")
cat("É data? ", class(data), "\n\n")

# POSIXct / POSIXlt: para data e hora.
data_hora <- as.POSIXct("2025-09-02 13:45:00")
cat("É POSIXct? ", class(data_hora), "\n\n")




