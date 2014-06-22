require(rgl)
require(shiny)
require(shinyrgl)
require(RColorBrewer)
mypalette<-brewer.pal(7,"YlOrBr")
col<-mypalette[4]

x <- seq(-1,1, length=30)
y <- seq(-1,1,length=30)
f <- function(x,y) { 1/sqrt(x^2+z^2) }
z <- outer(x, y, f)
z[is.na(z)] <- 1

open3d()
bg3d("white")
material3d(col="black")
persp3d(x, y, z, col= col,xlab="",ylab="",zlab="",box=F,axes=F)
