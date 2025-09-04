# Funções Internas do R.

# Funções Matemáticas
# Usadas para cálculos numéricos básicos.
abs(-5)       # Valor absoluto → 5
sqrt(16)      # Raiz quadrada → 4
log(100)      # Logaritmo natural
log10(100)    # Logaritmo base 10
exp(1)        # Exponencial de e^1
round(3.1415, 2)  # Arredondar → 3.14
ceiling(3.2)  # Arredonda para cima → 4
floor(3.8)    # Arredonda para baixo → 3

# Funções Estatísticas
# Usadas para análise de dados.
mean(c(1,2,3,4,5))   # Média
median(c(1,2,3,4,5)) # Mediana
var(c(1,2,3,4,5))    # Variância
sd(c(1,2,3,4,5))     # Desvio padrão
sum(c(1,2,3,4,5))    # Soma
min(c(1,2,3,4,5))    # Mínimo
max(c(1,2,3,4,5))    # Máximo
range(c(1,2,3,4,5))  # Intervalo (min e max)

# Funções de Geração de Sequência e Repetição
seq(1, 10, by=2)   # Sequência: 1,3,5,7,9
rep(5, times=3)    # Repete 5 três vezes → 5 5 5
rep(1:3, each=2)   # Repete cada número duas vezes → 1 1 2 2 3 3

# Funções de Manipulação de Strings
nchar("R linguagem")         # Número de caracteres → 11
toupper("r")                 # Maiúscula → "R"
tolower("R")                 # Minúscula → "r"
substr("Introdução", 1, 5)   # Substring → "Intro"
paste("Olá", "Mundo", sep=" ") # "Olá Mundo"
paste0("R", "Studio")        # "RStudio"

# Funções de Estruturas de Dados
length(c(10,20,30))    # Comprimento do vetor → 3
class(42)              # Classe do objeto → "numeric"
typeof(42L)            # Tipo → "integer"
is.numeric(3.14)       # Verifica se é numérico → TRUE
is.character("abc")    # Verifica se é string → TRUE
as.numeric("10")       # Converte para número
as.character(123)      # Converte para string

# Funções de Controle
print("Olá, R!")       # Imprime no console
cat("Valor:", 42, "\n") # Saída formatada
stop("Erro!")          # Interrompe com mensagem de erro
warning("Aviso!")      # Mostra aviso

# Funções de Entrada e Saída
# Entrada manual
# x <- readline(prompt="Digite algo: ")

# Saída de dados
write.csv(mtcars, "carros.csv")     # Salvar em CSV
dados <- read.csv("carros.csv")     # Ler de CSV

# Funções de Ajuda e Utilitários
help(mean)    # Ajuda sobre a função mean
?mean         # Outra forma de abrir a documentação
example(mean) # Exemplo de uso
ls()          # Lista objetos no ambiente
rm(x)         # Remove objeto x
