# ------------------- connected scatterplot
star_df %>% 
  ggplot( aes(x=x_values, y= y_values)) +
  geom_line( color="grey") +
  geom_point(shape=21, color="black", fill="#69b3a2", size=6) +
  ggdark::dark_mode()+
  theme(
    text = element_text(family = 'Poppins'),
    # legend.position="none",
    plot.title = element_text(size=14)
  )+
  labs(title = "Connected Scatterplot", x="numbers")











# -----------------------
library(babynames)
library(ggrepel)

# data
bnames <- babynames %>% 
  filter(name %in% c("Ashley", "Amanda")) %>%
  filter(sex=="F") %>%
  filter(year>1970) %>%
  select(year, name, n) %>%
  spread(key = name, value=n, -1)

# plot
bnames %>% 
  ggplot(aes(x=Amanda, y=Ashley, label=year)) +
  geom_point() +
  geom_segment(aes(
    xend=c(tail(Amanda, n=-1), NA), 
    yend=c(tail(Ashley, n=-1), NA)
  )
  ) + ggdark::dark_mode()

bnames %>% 
  babynames %>% 
  filter(name %in% c("Ashley", "Amanda")) %>%
  filter(sex=="F") %>%
  filter(year>1970) %>%
  select(year, name, n) %>%
  spread(key = name, value=n, -1)

# Select a few date to label the chart
tmp_date <- bnames %>% sample_frac(0.3)

# plot 
bnames %>% 
  ggplot(aes(x=Amanda, y=Ashley, label=year)) +
  geom_point(color="#69b3a2") +
  geom_text_repel(data=tmp_date) +
  geom_segment(color="#69b3a2", 
               aes(
                 xend=c(tail(Amanda, n=-1), NA), 
                 yend=c(tail(Ashley, n=-1), NA)
               ),
               arrow=arrow(length=unit(0.3,"cm"))
  ) +ggdark::dark_mode()

