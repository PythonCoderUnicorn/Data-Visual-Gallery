# --------------- basic density chart

# The dataset is provided in the gapminder library
library(gapminder)
data <- gapminder %>% filter(year=="2007") %>% dplyr::select(-year)

data %>% 
  ggplot(
    aes(x= lifeExp)
  )+
  geom_density(fill= colors[2], color="purple", alpha=0.3)+
  ggdark::dark_mode()+
  labs(title = "basic density plot",
       x="numbers")+
  theme(
    text = element_text(family = 'Poppins'),
    plot.title = element_text(size = 14)
  )



# ------ mirror density plot
library(hrbrthemes)
mdens_df = data.frame(
  var1 = rnorm(1000),
  var2 = rnorm(1000, mean=2)
)
p <- ggplot(mdens_df, aes(x= var1) ) +
  # Top
  geom_density( aes(x = var1, y = ..density..), 
                fill="#69b3a2" ) +
  geom_label( aes(x=4.5, y=0.25, label="variable1"), 
              color="#69b3a2") +
  # Bottom
  geom_density( aes(x = var2, y = -..density..), 
                fill= "#404080") +
  geom_label( aes(x=4.5, y=-0.25, label="variable2"), 
              color="#404080"
              ) +
  ggdark::dark_mode()+
  labs(x="value of x", title = "mirror density plot")+
  # theme_ipsum(base_family = 'Poppins')+
  theme(
    text = element_text(family = 'Poppins'),
    plot.title = element_text(size = 14)
  )
  

p
