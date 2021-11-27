
# original source: https://www.r-graph-gallery.com

# ------------------- 2D density plot


a <- data.frame( x=rnorm(20000, 10, 1.9), 
                 y=rnorm(20000, 10, 1.2) )
b <- data.frame( x=rnorm(20000, 14.5, 1.9), 
                 y=rnorm(20000, 14.5, 1.9) )
c <- data.frame( x=rnorm(20000, 9.5, 1.9), 
                 y=rnorm(20000, 15.5, 1.9) )
df_2d <- rbind(a,b,c)

# Basic scatterplot
ggplot(df_2d, aes(x=x, y=y)) +
  geom_point(col="thistle4", alpha= 0.5 )+ 
  ggdark::dark_mode()

# 2d histogram with default option
ggplot(df_2d, aes(x=x, y=y) ) +
  geom_bin2d() +
  scale_fill_viridis(option = 'F')+
  ggdark::dark_mode()+
  labs(title ="A 2D Histogram",
       x="numbers")+
  theme(
    text = element_text(family = 'Poppins'),
    legend.position="none",
    plot.title = element_text(size=14)
  )

# Bin size control + color palette
ggplot(df_2d, aes(x=x, y=y) ) +
  geom_bin2d(bins = 70) +
  scale_fill_continuous(type = "viridis") +
  ggdark::dark_mode()+
  labs(title ="A 2D Histogram with bins",
       x="numbers")+
  theme(
    text = element_text(family = 'Poppins'),
    legend.position="none",
    plot.title = element_text(size=14)
  )


# Hexbin chart with default option
ggplot(df_2d, aes(x=x, y=y) ) +
  geom_hex() +
  ggdark::dark_mode()

# Bin size control + color palette
ggplot(df_2d, aes(x=x, y=y) ) +
  geom_hex(bins = 70) +
  scale_fill_continuous(type = "viridis") +
  ggdark::dark_mode()+
  labs(title ="A 2D Histogram with hexagons",
       x="numbers")+
  theme(
    text = element_text(family = 'Poppins'),
    legend.position="none",
    plot.title = element_text(size=14)
  )


# geom density Using raster
ggplot(df_2d, aes(x=x, y=y) ) +
  stat_density_2d(
    aes(fill = ..density..), 
    geom = "raster", 
    contour = FALSE) +
  scale_x_continuous(expand = c(0, 0)) +
  scale_y_continuous(expand = c(0, 0)) +
  ggdark::dark_mode()+
  theme(
    text = element_text(family = 'Poppins'),
    legend.position="none",
    plot.title = element_text(size=14)
  )+
  labs(title ="A 2D Histogram geom density",
       x="numbers")
