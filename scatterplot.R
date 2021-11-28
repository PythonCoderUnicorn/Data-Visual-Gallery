# source: https://www.r-graph-gallery.com/274-map-a-variable-to-ggplot2-scatterplot.html




# ------------------- scatterplot
# Transparency
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, alpha=Species)) + 
  geom_point(size=6, color="#69b3a2") +
  ggdark::dark_mode()+
  labs(title = "scatterplot",
       x="Iris Sepal Length",
       y="Iris Sepal Width")+
  theme(text = element_text(family = 'Poppins'),
        plot.title = element_text(size = 14))


ggplot(iris, aes(x=Sepal.Length, 
                 y=Sepal.Width, 
                 shape=Species, 
                 alpha=Species, 
                 size=Species, 
                 color=Species)) + 
  geom_point() +
  ggdark::dark_mode()+
  labs(title = "scatterplot",
       x="Iris Sepal Length",
       y="Iris Sepal Width")+
  theme(text = element_text(family = 'Poppins'),
        plot.title = element_text(size = 14))


