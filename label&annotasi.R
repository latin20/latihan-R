ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color= species))+
  facet_wrap(~species)

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = color,fill=cut))+
  facet_wrap(~cut)


ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color= species))+
  facet_grid(sex~species)

#Membuat Anotasi


ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color= species))+
  labs(tittle = "Palmer Penguins : Body Mass VS. Flipper Length", subtitle = "Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman ")+
  
## Memanggil data tertentu dengan fungsi anotasi

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color= species))+
  labs(tittle = "Palmer Penguins : Body Mass VS. Flipper Length", subtitle = "Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman ")+
  annotate("text", x=220, y=3500, label="The Gentoons are the largest", color = "purple",
           fontface="bold", size = 4.5, angle= 25)

p<-ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color= species))+
  labs(tittle = "Palmer Penguins : Body Mass VS. Flipper Length", subtitle = "Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman ")
## cara lainnya
p+annotate("text", x=220, y=3500, label="The Gentoons are the largest")




###Ekpsort Gambar
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color= species))

ggsave("Three Penguin Species.png")

