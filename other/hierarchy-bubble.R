# --------------------- 

# Libraries
library(ggraph)
library(igraph)
library(tidyverse)
library(viridis)

# We need a data frame giving a hierarchical structure. Let's consider the flare dataset:
edges <- flare$edges
vertices <- flare$vertices
mygraph <- graph_from_data_frame( edges, vertices=vertices )

# Control the size of each circle: (use the size column of the vertices data frame)
ggraph(mygraph, 
       layout = 'circlepack', 
       weight=size) + 
  geom_node_circle() +
  theme_graph(background = "grey20",
              text_colour = 'white',
              fg_text_colour ='white')


# Left: color depends of depth
p <- ggraph(mygraph, layout = 'circlepack', weight=size) + 
  geom_node_circle(aes(fill = depth)) +
  # theme_void() + 
  theme_graph(
    base_family = 'Poppins',
    background = "grey10",
              text_colour = 'white',
              fg_text_colour ='white')
  
p
# Adjust color palette: viridis
p + scale_fill_viridis()
# Adjust color palette: colorBrewer
p + scale_fill_distiller(palette = "RdPu") 



# Create a subset of the dataset (I remove 1 level)
edges <- flare$edges %>% 
  filter(to %in% from) %>% 
  droplevels()
vertices <- flare$vertices %>% 
  filter(name %in% c(edges$from, edges$to)) %>% 
  droplevels()
vertices$size <- runif(nrow(vertices))

# Rebuild the graph object
mygraph <- graph_from_data_frame( edges, vertices=vertices )

