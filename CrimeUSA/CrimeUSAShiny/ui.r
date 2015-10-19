library(rCharts)
shinyUI(bootstrapPage(
  div(class="row",
      div(class="span4",
          sliderInput("Decade","", min=1960, max=2000, value=1960,step=10,animate=animationOptions(loop=T, interval=500)))),

  htmlOutput("decade"),
  img(src = "legend.png", height = 40, width = 200),
  mainPanel(
    showOutput("animatedChart","datamaps")  )
##  showOutput("animatedChart","datamaps")
  ))


