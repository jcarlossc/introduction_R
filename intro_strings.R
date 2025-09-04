# Criação de string e funções de manipulação.

# Criação de string em R.
texto <- "Introdução à Linguagem R"

# Comprimento e estrutura.
nchar(texto)     # Número de caracteres → 24
length(texto)    # Número de elementos (no vetor de strings) → 1

# Alterando maiúsculas/minúsculas
toupper(texto)   # "INTRODUÇÃO À LINGUAGEM R"
tolower(texto)   # "introdução à linguagem r"

# Extraindo e substituindo partes
substr(texto, 1, 11)           # Extrai os 11 primeiros → "Introdução "
substring(texto, 13)           # A partir do 13º caractere → "Linguagem R"

# Substituição parcial
substr(texto, 1, 11) <- "Curso R"
print(texto)                   # "Curso Rà Linguagem R"

# Concatenando strings
paste("Olá", "Mundo", sep=" ")   # "Olá Mundo"
paste0("R", "Studio")            # "RStudio" (sem separador)

# Dividindo strings
strsplit("A-B-C-D", split="-")   # Lista com elementos "A" "B" "C" "D"

# Procurando padrões
texto <- "R é uma linguagem de programação"

grep("R", texto)                 # Posição onde "R" aparece
grepl("R", texto)                 # TRUE se encontrar "R"

# Substituindo padrões.
gsub("linguagem", "ferramenta", texto)  
# "R é uma ferramenta de programação"

sub("a", "@", texto)  # Substitui apenas a primeira ocorrência de "a"

# Comparação de strings
str1 <- "casa"
str2 <- "CASA"

str1 == str2               # FALSE (case sensitive)
tolower(str1) == tolower(str2)  # TRUE (comparação ignorando maiúsculas)

# Funções úteis adicionais
startsWith("Programação em R", "Pro")   # TRUE
endsWith("arquivo.csv", ".csv")         # TRUE
trimws("   R linguagem   ")             # Remove espaços extras → "R linguagem"
