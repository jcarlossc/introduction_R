# Estruturas condicionais e de repetição na linguagem R.

# If.
x <- 44

if (x > 40) {
  print("A variável x é maior que 50!")
}

# If...else.
if (x > 50) {
  print("A variável x é maior que 50!")
}else {
  print("A variável x não é maior que 50!")
}

# If...else if...else.
if (x > 50) {
  print("A variável x é maior que 50!")
}else if (x > 45) {
  print("A variável x é maior que 45!")
}else {
  print("A variável x não é maior que 45 ou 50!")
}

# ifelse() (vetorizado)
# É uma função que aplica condição em vetores.
idades <- c(12, 18, 25, 15, 30)
resultado <- ifelse(idades >= 18, "Maior de idade", "Menor de idade")
print(resultado)

# Estruturas de Repetição em R.

# Percorre sequências ou vetores..
for (i in 1:5) {
  print(paste("Iteração:", i))
}

nomes <- c("Ana", "Bruno", "Carlos")
for (nome in nomes) {
  print(paste("Olá,", nome))
}

# While
# Repete enquanto a condição for verdadeira.
contador <- 1

while (contador <= 5) {
  print(paste("Contador =", contador))
  contador <- contador + 1
}

# repeat (loop infinito até usar break).

contador <- 1
repeat {
  print(paste("Contador =", contador))
  contador <- contador + 1
  if (contador > 5) {
    break   # Encerra o loop
  }
}

# Controle de Fluxo dentro dos loops.
for (i in 1:10) {
  if (i == 6) {
    print("Parando no 6")
    break
  }
  print(i)
}

# next → pula para a próxima iteração.
for (i in 1:10) {
  if (i %% 2 == 0) {
    next  # pula os pares
  }
  print(i)
}


