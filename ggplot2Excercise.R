# This script is used to practise plotting graphs through ggplot2 package

library(ggplot2)

options(scipen=999) #changed value format from e to complete integer
data("midwest", package = "ggplot2") #loaded dataset called midwest


# p <- ggplot(midwest, aes(x=area, y=poptotal)) # shows graph with just the axes
p <- ggplot(midwest, aes(x=area, y=poptotal)) + geom_point() + geom_smooth(method="lm") 
# we can add linear regression to the graph using "lm"
p <- p + geom_point(aes(col=county), size = 1) # adds points on graph of the features specified in aes
xStart <- 0
xEnd <- 0.1
yStart <- 0
yEnd <- 1000000
p <- p + xlim(c(xStart , xEnd)) + ylim(c(yStart,yEnd)) #specify the range of x and y-axis

p <- p + xlab("total area") + ylab("total population") 
# call y-axis total population and x-axis total area in the graph itself

p <- p + ggtitle("Midwest Plot", subtitle = NULL) + theme(plot.title = element_text(hjust = 0.5))
# Use theme() to modify individual components of a theme

print(p)
