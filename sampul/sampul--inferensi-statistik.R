library(tidyverse)
library(ggthemes)
library(ggridges)
library(cowplot)
source('F:/USD/03 Metode Statistika/Bahan Ajar Metode Statistik v.2023/sampul/ggplot_theme_Publication-2.R')

ggplot(iris, aes(x = Sepal.Length, y = Species,
                 fill = stat(x))) +
  geom_density_ridges_gradient() +
  scale_fill_viridis_c(name = "Panjang daun\nbunga (cm)",
                       option = "C") +
  labs(x = "Panjang daun bunga (cm)") +
  theme_dark_blue() +
  theme(axis.title.y = element_blank())
ggplot(lincoln_weather, aes(x = `Mean Temperature [F]`, y = Month,
                            fill = stat(x))) +
  geom_density_ridges_gradient(scale = 3,
                               rel_min_height = 0.01) +
  scale_fill_viridis_c(name = "Temp. [F]", option = "C") +
  labs(title = 'Temperatures in Lincoln NE in 2016') +
  theme_dark_grey()
