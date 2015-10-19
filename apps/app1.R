## Load libraries
library(rCharts)
library(shiny)
library(plyr)

## Set working directory
setwd('~/OneDrive/Radu Craioveanu/School/Data Science at John Hopkins on Coursera/Developing Data Products/CrimeUSA')
load("crimeusa.rda")

shinyServer(function(input, output) {
 
  # decade output
  output$decade=renderText({paste("From ",input$Decade+1,"to ",input$Decade+10)})
  
  # rCharts
  animateMap <- function (x, data, colors, map = "usa", ...){
    fml = lattice::latticeParseFormula(x, data = data)
    data = transform(data, fillKey = fml$left)
    d <- Datamaps$new()
    d$set(scope = map, fills = as.list(colors), 
          data = dlply(data, fml$right.name), ...)
    return(d)
  }
  output$animatedChart = renderChart({
    animatedChart=animateMap(
      CrimeRate~state,
      data = crimeusa[crimeusa$Year==input$Decade,],
      colors = c("","#4daf4a","#fc8d62","red")
    )
    animatedChart$addParams(dom = 'animatedChart') 
    return(animatedChart)
  })
  
  
})
