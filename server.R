options(rgl.useNULL=TRUE)

library(shiny)
library(rgl)
library(shinyRGL)
library(MASS)

shinyServer(function(input, output) {
  
output$torri <- renderWebGL({
    
    require(RColorBrewer)
    mypalette<-brewer.pal(7,"YlOrRd")
    col<-mypalette[4]
    
    x <- seq(-1,1, length=30)
    y <- seq(-1,1,length=30)
    f <- function(x,y) { 1/(x^2+y^2) }
    z <- outer(x, y, f)
    z[is.na(z)] <- 1
    
    open3d()
    bg3d("white")
    material3d(col="black")
    persp3d(x, y, z, col = col,xlab="",ylab="",zlab="",box=F,axes=F)    
    
  })
})