library(palmerpenguins)
library(ggplot2)
library(tidyverse)
data("penguins")

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))


ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g))+
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))


ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype=species))

ggplot(data = penguins) + 
  geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g))


ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut,color=cut)) #colour bisa diganti fill buat isian warna bar


ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut,fill=clarity))
