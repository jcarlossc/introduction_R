# Conjuntos de operadores da Linguagem R.

# Operadores aritméticos.

a <- 10
b <- 3

# Operações
soma <- a + b        # Adição (10 + 3 = 13)
subtracao <- a - b   # Subtração (10 - 3 = 7)
multiplicacao <- a * b  # Multiplicação (10 * 3 = 30)
divisao <- a / b        # Divisão (10 / 3 = 3.333...)
div.inteira <- a %/% b  # Divisão inteira (10 %/% 3 = 3)
resto <- a %% b         # Módulo / resto da divisão (10 %% 3 = 1)
potencia <- a ^ b       # Potência (10 ^ 3 = 1000)

print(soma); print(subtracao); print(multiplicacao)
print(divisao)
print(div.inteira)
print(resto)
print(potencia)

# Operadores relacionais.

print(a == b)   # Igual a
print(a != b)   # Diferente de
print(a > b)    # Maior que
print(a < b)    # Menor que
print(a >= b)   # Maior ou igual
print(a <= b)   # Menor ou igual

# Operadores lógicos.

x <- TRUE
y <- FALSE

print(x & y)   # E (elemento a elemento)
print(x | y)   # OU (elemento a elemento)
print(!x)      # Negação lógica

# Versões curtas avaliam apenas o primeiro elemento
print(x && y)  
print(x || y)  

# Operadores de atribuição.

# Formas de atribuir valores
c <- 5      # Atribuição para a direita
d <- 8
e = 12      # Também funciona
15 -> f     # Atribuição para a esquerda

print(c); print(d); print(e); print(f)

# Opradores especiais.

# Sequência
seq1 <- 1:5          # Cria vetor de 1 até 5
print(seq1)

# Pertinência
print(3 %in% seq1)   # Verifica se 3 está em seq1 (TRUE)
print(10 %in% seq1)  # Verifica se 10 está em seq1 (FALSE)

# Produto matricial
m1 <- matrix(1:4, nrow=2)
m2 <- matrix(5:8, nrow=2)
print(m1 %*% m2)     # Multiplicação de matrizes

# Operador de indexação
vet <- c("A", "B", "C")
print(vet[2])        # Acessa o segundo elemento ("B")




