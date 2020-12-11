limpieza <- function(texto){
  # se convierte el texto a minúsculas
  texto <- tolower(texto)
  # se eliminan páginas web
  texto <- str_replace_all(texto, "http\\S*", "")
  # se eliminan signos de puntuación y números
  texto <- str_replace_all(texto, "[[:punct:]]", " ")
  texto <- str_replace_all(texto, "[[:digit:]]", " ")
  # Eliminación de espacios en blanco múltiples
  texto <- str_replace_all(texto, "[\\s]+", " ")
  # Tokenización por palabras individuales
  texto <- str_split(texto, " ")[[1]]
  # Eliminación de tokens con una longitud < 2
  texto <- keep(.x = texto, .p = function(x){str_length(x) > 1})
  return(texto)
}

test = "Esto es 1 ejemplo de l'limpieza de6 TEXTO  https://t.co/rnHPgyhx4Z @JoaquinAmatRodrigo #textmining"
limpieza(texto = test)
