
# source: https://www.r-graph-gallery.com/300-basic-lollipop-plot.html


# ----------------- basic lollipop plot

# requires
# 2 numeric values like for a scatterplot
# one numeric and one categorical variable like for the barplot.

lolli = data.frame(
  x = seq(1, 30),
  y = abs(rnorm(30))
)

ggplot(
  lolli,
  aes(x=x,
      y=y)
)+
  geom_point(col='green')+
  geom_segment(
    aes(x=x, y=0, xend=x, yend=y),
    col=colors[3]
  )+
  ggdark::dark_mode()+
  theme(
    text = element_text(family = 'Poppins'),
    # legend.position="none",
    plot.title = element_text(size=14)
  )+
  labs(title = "Lollipop plot", x="numbers")









ggplot(lolli.2,
       aes(x=x,
           y=y))+
  
  geom_segment(
    aes(x=x, y=1, xend=x, yend=y),
    col= colors[2]
  )+
  geom_point(col='green', size=3)+
  # coord_flip()+
  ggdark::dark_mode()+
  theme(
    text = element_text(family = 'Poppins'),
    # legend.position="none",
    plot.title = element_text(size=14)
  )+
  labs(title = "Lollipop plot", x="letters")











lolli.2 = data.frame(
  x = LETTERS,
  y = abs( rnorm(26))
)
ggplot(lolli.2,
       aes(x=x,
           y=y))+
  geom_point(col='green')+
  geom_segment(
    aes(x=x, y=0, xend=x, yend=y),
    col= colors[2]
  )+
  ggdark::dark_mode()+
  theme(
    text = element_text(family = 'Poppins'),
    # legend.position="none",
    plot.title = element_text(size=14)
  )+
  labs(title = "Lollipop plot", x="letters")

