# ------------------ time series
# source: https://www.r-graph-gallery.com/all-graphs.html


time_df = data.frame(
  day = as.Date("2021-11-28") - 0:364,
  value = runif(365) + seq(-140, 224)^2 / 10000
)

tsp = ggplot(
  time_df,
  aes(x= day, y= value)
)+
  geom_line(col= colors[1])+
  # geom_point()+
  ggdark::dark_mode()+
  theme(
    text = element_text(family = 'Poppins'),
    # legend.position="none",
    plot.title = element_text(size=14)
  )+
  labs(title = "Time Series plot", x="Date")

tsp

tsp + 
  geom_point()+
  scale_x_date(date_labels = "%b")+
  labs(title = "Time Series plot  %b", x="Date")

tsp + 
  # geom_point()+
  scale_x_date(date_labels = "%Y %b %d")+
  labs(title = "Time Series plot  %Y %b %d", x="Date")

tsp + scale_x_date(date_labels = "%W")+
  labs(title = "Time Series plot  %W", x="Week Number")

tsp + scale_x_date(date_labels = "%m-%Y")+
  labs(title = "Time Series plot  %m-%Y", x="Date")

tsp + scale_x_date(date_labels = "%W", date_breaks = "1 week")+
  labs(title = "Time Series plot  %W", x="Week")+
  theme(
    axis.text.x = element_text(angle = 90, hjust = 1, vjust = 1  )
  )

tsp + scale_x_date(date_minor_breaks = "2 day")+
  labs(title = "Time Series plot  minor_breaks", x="Date")

tsp +
  geom_point()+
  scale_x_date(limit= c(as.Date("2021-06-01"),as.Date("2021-10-20")))+
  ylim(0 ,2)
  
  
  
  
  
  
