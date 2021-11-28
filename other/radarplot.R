
# source: https://www.r-graph-gallery.com/142-basic-radar-chart.html


# ------------------------- radar chart
# install.packages('fmsb')
library(fmsb)
# very specific needs for data types

rdf = as.data.frame(
  matrix( sample(2:20, size = 10, replace = T), ncol = 10)
)
colnames(rdf) = c('alpha','beta','delta','gamma','iota','zeta',
                  'rho', 'sigma', 'tau', 'upsilon'
                  )

rdf = rbind( rep(20, 10), rep(0, 10), rdf)

head(rdf)
par(bg = 'black', fg = 'white')
radarchart(rdf,
           cglcol = 'grey50',
           # 1,7= line, 2,8= dash, 3,9= dot, 4,6= hash, 5,10= long line
           cglty = 5, 
           pcol = 'green',
           cglwd = 1, # 1:15 
           vlcex = 1 # stick with default
           )


radarchart( rdf, 
            axistype=1 , 
            #custom polygon
            pcol=rgb(0.2,0.5,0.5,0.9) , 
            pfcol=rgb(0.2,0.5,0.5,0.5) , 
            plwd=4 , 
            
            #custom the grid
            cglcol="grey", 
            cglty=1, 
            axislabcol="grey", 
            caxislabels=seq(0,20,5), 
            cglwd=0.8,
            
            #custom labels
            vlcex=0.8
)

