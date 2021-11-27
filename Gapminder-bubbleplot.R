
# source: https://www.r-graph-gallery.com/




# The dataset is provided in the gapminder library
library(gapminder)
data <- gapminder %>% filter(year=="2007") %>% dplyr::select(-year)

# Most basic bubble plot
data %>%
  arrange(desc(pop)) %>%
  mutate(country = factor(country, country)) %>%
  ggplot(aes(x=gdpPercap, y=lifeExp, size=pop, fill=continent)) +
  geom_point(alpha=0.5, shape=21, color="black") +
  scale_size(range = c(.1, 24), name="Population (M)") +
  scale_fill_viridis(discrete=TRUE, guide=FALSE, option="G") +
  ggdark::dark_mode()+
  theme(
    text = element_text(family = 'Poppins'),
    # legend.position="bottom",
    legend.position = "none") +
  labs(
    title = "Gapminder bubble chart",
    y="Life Expectancy",
       x="Gdp per Capita")

 

