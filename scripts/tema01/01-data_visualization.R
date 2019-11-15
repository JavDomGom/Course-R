library(tidyverse)
# tidyverse 1.2.1 ──
# ✔ ggplot2 3.2.1     ✔ purrr   0.3.3
# ✔ tibble  2.1.3     ✔ dplyr   0.8.3
# ✔ tidyr   1.0.0     ✔ stringr 1.4.0
# ✔ readr   1.3.1     ✔ forcats 0.4.0

# Los coches con motor más grande consumen más combustible
# que los coches con motor más pequeño.
# La relación consumo / tamaño es lineal?  Es no lineal? Es exponencial?
# Es positiva? Es negativa?

View(mpg)
?mpg
# displ: Tamaño del motor del coche en litros.
# hwy: Número de millas recorridas en autopista por galón de combustible (3.785411784 litros).

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

# Plantilla para hacer una representación gráfica con ggplot.
# ggplot(data = <DATA_FRAME>) +
#   <GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))

# Color de los puntos.
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

# Tamaño de los puntos.
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

# Transparencia de los puntos.
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

# Forma de los puntos (solo permite 6 formas a la vez).
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

# Elección manual de estéticas.
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), color = "red")
# color = Nombre del color en formato string.
# size = Tamaño del punto en mm.
# shape = Forma del punto con números del 0 al 127.
# 0  - 14: Son formas huecas, por tanto solo se le puede cambiar el color.
# 15 - 20: Son formas rellenas de color, por tanto se le puede cambiar el color.
# 21 - 25: Son formas con borde y relleno y se les puede cambiar el color (borde) y el fill (relleno).

# http://sape.inf.usi.ch/quick-reference/ggplot2/shape
d=data.frame(p=c(0:25))
ggplot() +
  scale_y_continuous(name="") +
  scale_x_continuous(name="") +
  scale_shape_identity() +
  geom_point(data=d, mapping=aes(x=p%%16, y=p%/%16, shape=p), size=5, fill="red") +
  geom_text(data=d, mapping=aes(x=p%%16, y=p%/%16+0.25, label=p), size=3)

# Ejemplo de gráfico con rombos amarillos de borde rojo.
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy),
             shape = 23,
             size = 10,
             color = "red",
             fill = "yellow")


ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = cyl),
             shape = 21,
             size = 1,
             color = "red",
             fill = "green")

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = cty),
             shape = 22,
             size = 3,
             color = "yellow",
             fill = "purple")

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy),
             shape = 23,
             size = 5,
             color = "orange",
             fill = "blue",
             stroke = 3)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ,
                           y = cty,
                           color = displ < 4
                           )
             )

## Facets
# facet_wrap(~<FORMULA_VARIABLE>): La variable debe ser discreta.
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~class, nrow = 3)

# No recomendable usar variables contínuas en el facet, pues
# generará un gráfico por cada valor existente de dicha
# variable, por ejemplo:
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~cty, nrow = 3)

# facet_grid(<FORMULA_VARIABLE1>~<FORMULA_VARIABLE2>)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv~cyl)

ggplot(data = mpg) +
  geom_point(mapping = aes(x=drv, y = cyl)) 

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(~cyl)


ggplot(data = mpg) +
  geom_point(mapping = aes(x=displ, y = hwy)) +
  facet_grid(.~cyl)

ggplot(data = mpg) +
  geom_point(mapping = aes(x=displ, y = hwy)) +
  facet_grid(drv~.)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~class, nrow = 3)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~class, scales = "free")

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(vars(cyl, drv))

?facet_wrap
?facet_grid

# Diferentes geometrías.
ggplot(data = mpg) +
  geom_point(mapping = aes(x=displ, y = hwy))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x=displ, y = hwy))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x=displ, y = hwy, linetype = drv))

ggplot(data = mpg) +
  geom_point(mapping = aes(x=displ, y=hwy, color = drv)) +
  geom_smooth(mapping = aes(x=displ, y = hwy, linetype = drv, color = drv))

?geom_smooth

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x=displ, y = hwy))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x=displ, y = hwy, group = drv, color = drv),
              show.legend = T)

ggplot(data = mpg, mapping = aes(x=displ, y = cty)) +
  geom_point(mapping = aes(shape = class)) +
  geom_smooth(mapping = aes(color = drv))

ggplot(data = mpg, mapping = aes(x=displ, y = hwy)) +
  geom_point(mapping = aes(color = class)) +
  geom_smooth(data = filter(mpg, class == "suv"), se = F)

ggplot(data = mpg, mapping = aes(x=displ, y = hwy,color = drv)) + 
  geom_point() + 
  geom_smooth( se = F)

library(ggplot2)
library(dplyr)

#Ejemplo del dataset de diamantes
View(diamonds)

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x=cut))

?geom_bar

ggplot(data = diamonds) +
  stat_count(mapping = aes(x=cut))

demo_diamonds <- tribble(
  ~cut,       ~freqs,
  "Fair",       1610,
  "Good",       4906,
  "Very good", 12082,
  "Premium",   13791,
  "Ideal",     21551
)

ggplot(data = demo_diamonds) +
  geom_bar(mapping = aes(x=cut, y=freqs),
           stat = "identity")

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x=cut, y=..prop.., group=1))

ggplot(data = diamonds) +
  stat_summary(
    mapping = aes(x=cut, y=depth),
    fun.ymin = min,
    fun.ymax = max,
    fun.y = median
  )
