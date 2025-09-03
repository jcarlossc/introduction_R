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
cat("É numérico? ", class(vetor), "\n\n")

# Usado para variáveis categóricas (ex.: níveis de um questionário).
sexo <- factor(c("M", "F", "M", "F"))
cat("Variáveis categóricas:", sexo, "\n")
cat("É factor? ", class(sexo), "\n")
cat("Níveis: ", levels(sexo), "\n\n")






