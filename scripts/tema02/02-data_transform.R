library(tidyverse)
library(nycflights13)

nycflights13::flights
?flights
View(flights)

# Tibble es un data frame mejorado para tidyverse.
## * int  -> Números enteros
## * dlb  -> Números reales (double)
## * chr  -> Vector de carácteres o strings
## * dttm -> date + time
## * lgl  -> Logical, contiene valores booleanos (T o F)
## * fctr -> Factor, variables categóricas
## * date -> Fecha (día, mes y año)

# Funciones
## * filter()    -> Filtrar observaciones a partir de valores concretos.
## * arrange()   -> Reordenar las filas.
## * select()    -> Seleccionar variables por sus nombres.
## * mutate()    -> Crea nuevas variables con funciones a partir de las existentes.
## * summarise() -> Colapsar varios valores para dar una resumen de los mismos.

## * group_by()  -> Opera la función a la que acompaña grupo a grupo.

## 1 - Data frame
## 2 - Operaciones que queremos hacer a las variables del data frame.
## 3 - Resultado en un nuevo data frame.
