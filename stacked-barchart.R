# --------------------- basic stacked area

# original source for code: https://www.r-graph-gallery.com/136-stacked-area-chart.html

library(tidyverse)
library(ggplot2)
library(viridis)





df = data.frame(
  time = as.numeric( rep( seq(1, 7), each= 7)), # x
  value = runif(49, min = 10, max = 100),
  group = rep( LETTERS[1:7], times= 7)
)

ggplot(
  df,
  aes(x= time,
      y= value,
      fill= group)
)+
  geom_area()+
  scale_fill_viridis(discrete = T, option = 'H')+
  ggdark::dark_mode()+
  labs(title = "Stacked Bar chart",
       caption = "scale_fill_viridis(discrete= T, option='H')")+
  theme(
    plot.caption = element_text(size = 12, 
                                hjust = 0,
                                colour = "grey50") )

# --- factor the groups
df$group = factor(df$group, levels = c('B','A','D','F','E','G','C'))

# --- sort the groups
myLevels = levels(df$group)
df$group = factor(df$group, levels =  sort(myLevels))

# --- proportional stack
prop_df = df %>% 
  group_by(time, group) %>% 
  summarise(n = sum(value)) %>% 
  mutate(percentage = n / sum(n))

prop_df %>% 
  ggplot(
    aes(x= time,
        y= percentage,
        fill= group)
  )+
  geom_area(alpha= 0.6, size= 1, color="black")+
  scale_fill_viridis(discrete = T, option = 'E')+
  ggdark::dark_mode()+
  labs(title = "Stacked Proportional Bar chart",
       caption = "scale_fill_viridis(discrete= T, option='E')")+
  theme(
    plot.caption = element_text(size = 12, 
                                hjust = 0,
                                colour = "grey40")
  )
