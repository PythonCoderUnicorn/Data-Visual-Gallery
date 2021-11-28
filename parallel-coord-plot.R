# source: https://www.r-graph-gallery.com/parallel-plot-ggally.html#custom


# -------------- line plot

library(GGally)
# Data set is provided by R natively


# Plot
ggparcoord(iris,
           columns = 1:4, groupColumn = 5, order = "anyClass",
           showPoints = TRUE, 
           title = "Parallel Coordinate Plot for the Iris Data",
           alphaLines = 0.3
) + 
  ggdark::dark_mode()+
  scale_color_viridis(discrete=TRUE, option = 'C') +
  # theme_ipsum()+
  theme(
    text = element_text(family = 'Poppins'),
    plot.title = element_text(size=14)
  )







ggparcoord(iris,
           columns = 1:4, groupColumn = 5, order = "anyClass",
           scale="center",
           showPoints = TRUE, 
           title = "Standardize and center variables",
           alphaLines = 0.3
) + 
  scale_color_viridis(discrete=TRUE) +
  ggdark::dark_mode()+
  theme(
    text = element_text(family = 'Poppins'),
    legend.position="none",
    plot.title = element_text(size=14)
  )


