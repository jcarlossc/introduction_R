# Manipulação de Arquivos Web em R
# Ler arquivos diretamente de uma URL

# CSV direto da web
url_csv <- "https://people.sc.fsu.edu/~jburkardt/data/csv/airtravel.csv"
dados_csv <- read.csv(url_csv)
head(dados_csv)

# TXT da web
url_txt <- "https://www.gutenberg.org/files/1342/1342-0.txt"
dados_txt <- readLines(url_txt, n = 10)  # lê primeiras 10 linhas
print(dados_txt)

# Baixar arquivos da web (download.file)
# Baixar arquivo CSV
url <- "https://people.sc.fsu.edu/~jburkardt/data/csv/hw_200.csv"
destino <- "dados_baixados.csv"

download.file(url, destino, method = "auto")

# Ler o arquivo baixado
dados <- read.csv(destino)
head(dados)

# Usar o pacote httr para requisições HTTP
# install.packages("httr")
library(httr)

# GET request
res <- GET("https://httpbin.org/get")
content(res, "text")

# POST request com dados
res_post <- POST("https://httpbin.org/post", body = list(nome="José", idade=47))
content(res_post, "parsed")

# Manipular dados JSON da Web com jsonlite
# install.packages("jsonlite")
library(jsonlite)

# API pública de exemplo
url_json <- "https://api.coindesk.com/v1/bpi/currentprice.json"
dados_json <- fromJSON(url_json)

# Estrutura
str(dados_json)

# Acessar valor do Bitcoin em USD
dados_json$bpi$USD$rate

# Ler dados de planilhas Google Sheets
# install.packages("googlesheets4")
library(googlesheets4)

# Planilha pública de exemplo
url_sheet <- "https://docs.google.com/spreadsheets/d/1BxiMVs0XRA5nFMdKvBdBZjgmUUqptlbs74OgvE2upms/edit?usp=sharing"

dados_sheet <- read_sheet(url_sheet)
head(dados_sheet)

# Ler páginas HTML com rvest (Web Scraping)
# install.packages("rvest")
library(rvest)

# Página de exemplo
url <- "https://www.imdb.com/chart/top/"

pagina <- read_html(url)

# Extrair títulos de filmes
titulos <- pagina %>% html_nodes(".titleColumn a") %>% html_text()
head(titulos, 10)

# Trabalhar com arquivos compactados online
# Arquivo ZIP na web
url_zip <- "https://github.com/datablist/sample-csv-files/raw/main/files/people/people-100.zip"
download.file(url_zip, "dados.zip")

# Descompactar
unzip("dados.zip", exdir = "dados_extraidos")

# Listar arquivos extraídos
list.files("dados_extraidos")
