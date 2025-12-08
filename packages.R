# Comando para instalar: install.packages("nome-do-pacote")

# Nota: Esse comando só funciona para pacotes que estejam no github; 
# você precisa ter o pacote devtools instalado para rodar esse comando.
# devtools::install_github("nome-do-usuario/nome-do-repositorio")


# A aba packages do Rstudio permite instalar pacotes usando-se o botão 
# install e digitando o nome ou a atualização (update) marcando os pacotes que deseja atualizar.
# install.packages("C:/caminho/nome-do-pacote.zip", repos = NULL)

# Ajuda
# ?sum
# help()
# stats::

# Usando o operador :: para especificar o pacote

# nome_do_pacote::nome_da_função() # Assim, você evita qualquer confusão. 

# mutate() # usa o mutate do último pacote carregado. 

# dplyr::mutate() # usa o mutate do pacote dplyr independentemente da ordem de carregamento. 

# Definir diretório de trabalho
# setwd("C:/")

# Verifica diretório atual
# getwd()

# Remove dataframe duplicado
# rm(df_xlsx, df_parquet)

