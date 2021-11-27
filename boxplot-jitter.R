# boxplot ith jitter function

# original source: https://www.r-graph-gallery.com



# --------------- boxplot with jitter
# create a dataset
boxdf <- data.frame(
  name=c( rep("A",500), rep("B",500), 
          rep("B",500), rep("C",20), 
          rep('D', 100)  ),
  value=c( rnorm(500, 10, 5), 
           rnorm(500, 13, 1), 
           rnorm(500, 18, 1), 
           rnorm(20, 25, 4), 
           rnorm(100, 12, 1) )
)

boxdf %>% 
  ggplot( aes(x=name, y=value, fill=name)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6, option = 'B') +
  geom_jitter(color="orange", size=0.4, alpha=0.9) +
  ggdark::dark_mode()+
  labs(title ="A boxplot with jitter",
       x="")+
  theme(
    text = element_text(family = 'Poppins'),
    legend.position="none",
    plot.title = element_text(size=14)
  )
  
