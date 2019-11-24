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

### FILTER
# Todos los vuelos en 1 de enero.
jan01 <- filter(flights, month == 1, day == 1)
# Todos los vuelos en 14 de abril.
apr14 <- filter(flights, month == 4, day == 14)

(dec25 <- filter(flights, month == 12, day == 25))

3 == 3
sqrt(2)^2
3 == 3
sqrt(2)^2 == 2
near(sqrt(2)^2, 2)
1/pi * pi == 1
1/49 * 49 == 1
near(1/49*49, 1)

filter(flights, month == 5 | month == 6)

may_june <- filter(flights, month %in% c(5,6))

# Ley de Morgan
# !(x&y) == (!x)|(!y)
# !(x|y) == (!x)&(!y)

filter(flights, !(arr_delay > 60 | dep_delay > 60))
filter(flights, arr_delay <= 60, dep_delay <= 60)

NA > 0
10 == NA
NA + 5
NA / 5
NA == NA

# La tía Mery tiene una edad desconocida. No sé cómo de vieja es.
age.mery <- NA

# El tío John también hace mucho que no lo veo, y no sé cuantos años tiene.
age.john <- NA

# Deben de tener la misma edad John y Mery?
age.mery == age.john

is.na(age.mery)

df <- tibble(x=c(1,2,NA,4,5))
filter(df, x>2)
filter(df, is.na(x)|x>2)
