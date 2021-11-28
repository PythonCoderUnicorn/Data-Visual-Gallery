
# original source: https://www.r-graph-gallery.com/

# ------------------ scatterplot polynomial curve

x = runif(300,  min=-10, max=10) 
y = 0.1*x^3 - 0.5 * x^2 - x + 10 + rnorm(length(x), mean=0, sd=8) 
p_df = data.frame(x,y)

ggplot(p_df,
       aes(x= x, y= y) )+
  geom_point(col= colors[1], size=2.3, alpha= 0.4)+
  ggdark::dark_mode()+
  theme(
    text = element_text(family = 'Poppins'),
    # legend.position="none",
    plot.title = element_text(size=14)
  )+
  labs(title = "Polynomial Curve Scatterplot", x="numbers")

# model <- lm(y ~ x + I(x^2) + I(x^3))
# 
# myPredict <- predict( model ) 
# ix <- sort(x,index.return=T)$ix
# lines(x[ix], myPredict[ix], col=2, lwd=2 ) 
# 
# coeff <- round(model$coefficients , 2)
# text(3, -70 ,
#      paste("Model : ",coeff[1] , " + " , 
#            coeff[2] , "*x"  , "+" , 
#            coeff[3] , "*x^2" , "+" , 
#            coeff[4] , "*x^3" , 
#            "\n\n" , 
#            "P-value adjusted = ",
#            round(summary(model)$adj.r.squared,2)))


