#a = 5
a <- 8
a
b<-3
a*b
c<-a*b

rm(c)

ls()

rm(list = ls())

sqrt(45)
?sqrt

require(stats) # for spline
require(graphics)
xx <- -9:9
plot(xx, sqrt(abs(xx)),  col = "red")
lines(spline(xx, sqrt(abs(xx)), n=101), col = "pink")