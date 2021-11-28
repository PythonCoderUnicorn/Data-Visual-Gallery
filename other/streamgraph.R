
# --------------------- stream graph

# need 3 columns
# numeric variable for the X axis. Usually it provides time.
# numeric variable for the Y axis: this is the variable we are studying
# a categorical variable: each group will be plotted as a distinct shape

# devtools::install_github("hrbrmstr/streamgraph")

library(streamgraph)

# current verison
# packageVersion("streamgraph")

# library(dplyr)
# 
# ggplot2movies::movies %>%
#   select(year, Action, Animation, Comedy, Drama, Documentary, Romance, Short) %>%
#   tidyr::gather(genre, value, -year) %>%
#   group_by(year, genre) %>%
#   tally(wt=value) -> dat
# 
# streamgraph(dat, "genre", "n", "year", interactive=TRUE) %>%
#   sg_axis_x(5, "year", "%Y") %>%
#   sg_fill_brewer("PuOr")


stream_df = data.frame(
  year= rep(seq(1990,2016) , each=10),
  name= rep(letters[1:10] , 27),
  value= sample( seq(0,1,0.0001) , 270)
)

# Basic stream graph: just give the 3 arguments
pp <- streamgraph(stream_df,
                  key="name", 
                  value="value", 
                  date="year",
                  height="300px", 
                  width="1000px"
                  )
pp
