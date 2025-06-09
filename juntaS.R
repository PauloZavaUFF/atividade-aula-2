#Importando os arquivos
library(readxl)

tubercolose= read_xls(path = "Base_tuberculose.xls")
tubercolose

indicadores=read_xls("Base_indicadores.xls")
indicadores

#Juntando as bases
library(dplyr)
base = left_join(x = tubercolose, #primeira base 
                   y = indicadores, #segunda base 
                   by = "Municipio")
base
