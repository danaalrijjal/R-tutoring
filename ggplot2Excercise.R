# This script is used to practise plotting graphs through ggplot2 package

library(ggplot2)

options(scipen=999)
data("midwest", package = "ggplot2")


# p <- ggplot(midwest, aes(x=area, y=poptotal))
# p <- p + geom_point()

p <- ggplot(midwest, aes(x=area, y=poptotal)) + geom_point() + geom_smooth(method="lm")

xStart <- 0
xEnd <- 0.1
yStart <- 0
yEnd <- 1000000
p <- p + xlim(c(xStart , xEnd)) + ylim(c(yStart,yEnd))


print(p)