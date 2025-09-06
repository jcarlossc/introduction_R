# Principais Bibliotecas em R
# Manipulação e Transformação de Dados
# dplyr → gramática de manipulação de dados (filtros, agregações, joins).
library(dplyr)
df <- data.frame(Nome=c("Ana","Bruno"), Idade=c(23,30))
df %>% filter(Idade > 25) %>% select(Nome)

# tidyr → limpeza e organização (reshape de tabelas).
library(tidyr)
df %>% pivot_wider(names_from=Nome, values_from=Idade)

# data.table → manipulação rápida de grandes datasets.
library(data.table)
dt <- data.table(x=1:5, y=6:10)
dt[, mean(y)]

# Visualização de Dados
# ggplot2 → visualizações elegantes e customizáveis.
library(ggplot2)
ggplot(mtcars, aes(x=mpg, y=hp)) + geom_point()

# plotly → gráficos interativos.
library(plotly)
plot_ly(data=mtcars, x=~mpg, y=~hp, type="scatter", mode="markers")

# shiny → dashboards e apps interativos em R.
library(shiny)
# shinyApp(ui, server) → cria apps web interativos

# Importação e Exportação de Dados
# readr → leitura rápida de CSV e TSV.
library(readr)
df <- read_csv("dados.csv")

# readxl → leitura de Excel.
library(readxl)
read_excel("dados.xlsx")

# jsonlite → leitura e escrita de JSON.
library(jsonlite)
fromJSON('{"nome":"Ana","idade":23}')

# Estatística e Modelagem
# (nativo) → testes estatísticos, regressão linear, ANOVA.
lm(mpg ~ hp, data=mtcars)

# caret → treinamento e avaliação de modelos de ML.
library(caret)
modelo <- train(Species ~ ., data=iris, method="rpart")

# MASS → métodos estatísticos avançados.
library(MASS)
data(Boston)

# Machine Learning e AI
# randomForest → algoritmos de árvores de decisão.
Machine Learning e AI

randomForest → algoritmos de árvores de decisão.

# xgboost → gradient boosting.
library(xgboost)

# keras / tensorflow → redes neurais profundas.
library(keras)
# model <- keras_model_sequential() %>% ...

# Relatórios e Documentação
# knitr → relatórios dinâmicos (R Markdown).
library(knitr)
kable(head(mtcars))

# rmarkdown → geração de relatórios HTML, PDF, Word.
library(rmarkdown)
render("meu_relatorio.Rmd")

# bookdown → criação de livros e documentação.

# Geoprocessamento e Mapas
# sf → manipulação de dados espaciais.
# leaflet → mapas interativos.
library(leaflet)
leaflet() %>% addTiles() %>% addMarkers(lng=-34.9, lat=-8.05, popup="Recife")

