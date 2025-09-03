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


