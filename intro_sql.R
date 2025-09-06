# Uso da Linguagem R com SQL

# Existem basicamente duas formas principais:
# 1. Manipular bancos locais (SQLite, PostgreSQL, MySQL, etc.).
# 2. Usar SQL diretamente em Data Frames com pacotes como sqldf.

# SQL em Data Frames com sqldf
# O pacote sqldf permite rodar SQL diretamente sobre data frames.
# install.packages("sqldf")
library(sqldf)

# Criar Data Frame
df <- data.frame(
  id = 1:5,
  nome = c("Ana", "Carlos", "José", "Maria", "Paula"),
  idade = c(23, 35, 47, 19, 31)
)

# Consulta SQL em Data Frame
resultado <- sqldf("SELECT nome, idade FROM df WHERE idade > 30 ORDER BY idade DESC")
print(resultado)

# Conectando R a um Banco SQLite
# Aqui usamos o pacote DBI e RSQLite.
# install.packages("DBI")
# install.packages("RSQLite")
library(DBI)

# Criar conexão com banco SQLite
con <- dbConnect(RSQLite::SQLite(), "meu_banco.sqlite")

# Criar tabela
dbExecute(con, "
  CREATE TABLE IF NOT EXISTS usuarios (
    id INTEGER PRIMARY KEY,
    nome TEXT,
    idade INTEGER
  )
")

# Inserir dados
dbExecute(con, "INSERT INTO usuarios (nome, idade) VALUES ('José', 47)")
dbExecute(con, "INSERT INTO usuarios (nome, idade) VALUES ('Maria', 29)")
dbExecute(con, "INSERT INTO usuarios (nome, idade) VALUES ('Carlos', 35)")

# Consultar dados
dados <- dbGetQuery(con, "SELECT * FROM usuarios WHERE idade > 30")
print(dados)

# Fechar conexão
dbDisconnect(con)

# Conectando R a PostgreSQL / MySQL
# Com pacotes específicos: RPostgres ou RMySQL.
# PostgreSQL
# install.packages("RPostgres")
library(RPostgres)

# Conectar
con <- dbConnect(
  RPostgres::Postgres(),
  dbname = "meu_banco",
  host = "localhost",
  port = 5432,
  user = "meu_usuario",
  password = "minha_senha"
)

# Consulta
res <- dbGetQuery(con, "SELECT * FROM clientes LIMIT 10")
print(res)

dbDisconnect(con)

# Integração SQL + R para análise
# Depois de buscar com SQL, usamos R para análise:
# Suponha que já temos um DataFrame "dados"
# Média de idade usando R
media_idade <- mean(dados$idade)
cat("Média de idade:", media_idade, "\n")

# Gráfico
hist(dados$idade, main="Distribuição de Idade", col="skyblue", border="white")

