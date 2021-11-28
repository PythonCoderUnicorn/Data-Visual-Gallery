# source : https://www.r-graph-gallery.com/236-custom-your-treemap.html

# ----------------------- treemap
library(treemap)

tree_df = data.frame(
  groupz = c('group_1','group_2','group_3'),
  grp_values = c(13, 15, 32)
)

treemap(
  tree_df,
  index = 'groupz',
  vSize = 'grp_values',
  type = 'index'
)

tree_df.2 = data.frame(
  group = c(rep("group-1",4),
            rep("group-2",2),
            rep("group-3",3)),
  subgroup = paste("subgroup" , 
                   c(1,2,3,4,1,2,1,2,3), 
                   sep="-"),
  value = c(13,5,22,12,11,7,3,1,23)
)
treemap(tree_df.2,
        index=c("group","subgroup"),
        vSize="value",
        type="index"
) 


# -- customize
treemap(tree_df.2,
        index=c("group","subgroup"),
        vSize="value",
        type="index",
        #--
        fontsize.labels = c(15,12),
        fontcolor.labels=c("black","black"),
        fontface.labels = 2,
        align.labels=list(
          c("center", "center"), 
          c("left", "center")
        ),
        overlap.labels=0.5,
        inflate.labels=T,
        border.col=c("black","white"),
        border.lwds=c(7,2),
        palette = "Dark2",
        title = "Treemap",
        fontsize.title = 14
        
) 
