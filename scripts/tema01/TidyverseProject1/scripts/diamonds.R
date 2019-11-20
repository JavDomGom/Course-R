getwd()
library(tidyverse)

ggplot(diamonds, aes(carat, price)) +
  geom_hex()

ggsave("figures/diamonds_hex.pdf")

write_csv(diamonds, "data/diamonds.csv")
