# Manipulação de Arquivos em R.

# Arquivos de Texto (.txt, .csv) - Leitura.
# Leitura de CSV padrão
dados_csv <- read.csv("dados.csv", header = TRUE, sep = ",")
head(dados_csv)

# Leitura de TXT separado por tabulação
dados_txt <- read.table("dados.txt", header = TRUE, sep = "\t")
head(dados_txt)

# Arquivos de Texto (.txt, .csv) - Leitura. Escrita.
# Exportar para CSV
write.csv(dados_csv, "saida.csv", row.names = FALSE)

# Exportar para TXT separado por tabulação
write.table(dados_csv, "saida.txt", sep = "\t", row.names = FALSE)

# Arquivos Excel (.xlsx)
# Instalar pacote se necessário
# install.packages("readxl")
# install.packages("writexl")

library(readxl)
library(writexl)

# Leitura de planilha Excel
dados_xlsx <- read_excel("dados.xlsx", sheet = 1)
head(dados_xlsx)

# Escrita em Excel
write_xlsx(dados_xlsx, "saida.xlsx")

# Arquivos JSON (.json)
# install.packages("jsonlite")
library(jsonlite)

# Ler JSON
dados_json <- fromJSON("dados.json")
print(dados_json)

# Escrever JSON
write_json(dados_json, "saida.json", pretty = TRUE)

# Arquivos XML (.xml)
# install.packages("xml2")
library(xml2)

# Leitura
dados_xml <- read_xml("dados.xml")
print(dados_xml)

# Acessar elementos
xml_find_all(dados_xml, "//nome")

# Escrita
write_xml(dados_xml, "saida.xml")

# Arquivos RData e RDS (formatos nativos do R)
# Criando um objeto
df <- data.frame(Nome=c("Ana","Bruno"), Idade=c(23,30))

# Salvar em RData (pode ter vários objetos)
save(df, file="dados.RData")

# Carregar RData
load("dados.RData")

# Salvar em RDS (apenas um objeto)
saveRDS(df, "dados.rds")

# Ler RDS
novo_df <- readRDS("dados.rds")
print(novo_df)

# # Criando um objeto
df <- data.frame(Nome=c("Ana","Bruno"), Idade=c(23,30))

# Salvar em RData (pode ter vários objetos)
save(df, file="dados.RData")

# Carregar RData
load("dados.RData")

# Salvar em RDS (apenas um objeto)
saveRDS(df, "dados.rds")

# Ler RDS
novo_df <- readRDS("dados.rds")
print(novo_df)

# Manipulação de Arquivos e Diretórios
# Listar arquivos no diretório
list.files()

# Listar arquivos com padrão
list.files(pattern = "\\.csv$")

# Criar diretório
dir.create("dados")

# Mudar diretório de trabalho
setwd("dados")

# Voltar ao diretório anterior
setwd("..")

# Checar se arquivo existe
file.exists("dados.csv")

# Renomear arquivo
file.rename("saida.csv", "saida_renomeado.csv")

# Copiar arquivo
file.copy("saida_renomeado.csv", "backup.csv")

# Remover arquivo
file.remove("backup.csv")

# Leitura de Arquivos Grandes (eficiência)
# install.packages("data.table")
library(data.table)

# fread é muito mais rápido que read.csv
grande <- fread("dados_grandes.csv")
head(grande)

# Arquivos Compactados (.zip, .gz)
# Criar arquivo zip
zip("dados.zip", "saida_renomeado.csv")

# Descompactar
unzip("dados.zip", exdir = "extraidos")

# Ler diretamente de arquivo gzip
con <- gzfile("dados.csv.gz", "rt")
dados_gz <- read.csv(con)
close(con)

# 