# Funções na Linguagem R.

# Funções definidas pelo usuário.

# Função simples sem argumentos
ola <- function() {
  print("Olá, Mundo!")
}
ola()

# Função com argumentos
soma <- function(a, b) {
  return(a + b)
}
print(soma(5, 3))

# Funções com valores padrão.
potencia <- function(base, expoente = 2) {
  return(base ^ expoente)
}

print(potencia(5))      # Usa expoente padrão (2) → 25
print(potencia(5, 3))   # Sobrescreve para 3 → 125

# Funções anônimas (lambda).
quadrados <- sapply(1:5, function(x) x^2)
print(quadrados)   # 1 4 9 16 25

# Funções de ordem superior.
# Funções que recebem outras funções como argumento.
# Exemplo com função apply
mat <- matrix(1:9, nrow=3)
print(apply(mat, 1, sum))   # Soma por linha
print(apply(mat, 2, sum))   # Soma por coluna


# Funções recursivas.
# Funções que chamam a si mesmas.
# Fatorial recursivo
fatorial <- function(n) {
  if (n == 0) {
    return(1)
  } else {
    return(n * fatorial(n - 1))
  }
}

print(fatorial(5))   # 120

# Funções variádicas (...)
# Permitem passar número variável de argumentos.
soma_variadica <- function(...) {
  valores <- c(...)
  return(sum(valores))
}

print(soma_variadica(1, 2, 3, 4, 5))  # 15

# Funções como objetos
# Em R, funções são primeira classe: podem ser atribuídas a variáveis.
dobrar <- function(x) x * 2
f <- dobrar   # Atribuí a função a uma variável
print(f(10))  # 20

# Closures (funções que retornam funções)
# Uma função pode retornar outra função.
multiplicador <- function(n) {
  function(x) {
    x * n
  }
}

dobro <- multiplicador(2)
triplo <- multiplicador(3)

print(dobro(10))   # 20
print(triplo(10))  # 30

# Funções de ambiente / escopo
# Mostram como variáveis externas podem ser capturadas.
x <- 100

teste_escopo <- function() {
  x <- 10
  return(x)
}

print(teste_escopo())  # 10 (escopo local)
print(x)               # 100 (escopo global)
