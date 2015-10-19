---
title       : Crime in the USA from 1960 to 2000
subtitle    : Animated Longitudinal View in a Slidify Presentation 
author      : Radu Craioveanu
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap,quiz,shiny,interactive] # {mathjax, quiz, bootstrap}
ext_widgets: {rCharts: [libraries/nvd3]}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Project Objective

1. Provide a longitudinal animated view of the crime rate in USA
2. Showcase the work as a Shiny App and load on the RStudio Shiny server 
3. Document the work via a Slidify presentation
4. Push all the work to a Github repo

--- .class #id 

## The Application

1. Provides crime data in the USA from 1960 to 2000
2. The crime data is categorized as Low, Medium and High
3. There is a slider input that allows selection of a decade year
4. The slider also has a run mode, set to 2.5 seconds per decade
5. Shiny server app URL https://radunh.shinyapps.io/CrimeUSAShiny
6. Github project URL for CrimeUSA Shiny app
7. Github project URL for CrimeUSA Slidify preso

--- .class #id 

## Interactive Chart - ShinyUI

<!--html_preserve--><div class="row">
<div class="span4">
<div class="form-group shiny-input-container">
<label class="control-label" for="Decade"></label>
<input class="js-range-slider" id="Decade" data-min="1960" data-max="2000" data-from="1960" data-step="10" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-keyboard="true" data-keyboard-step="25" data-drag-interval="true" data-data-type="number"/>
<div class="slider-animate-container">
<a href="#" class="slider-animate-button" data-target-id="Decade" data-interval="2500" data-loop="TRUE">
<span class="play">
<i class="glyphicon glyphicon-play"></i>
</span>
<span class="pause">
<i class="glyphicon glyphicon-pause"></i>
</span>
</a>
</div>
</div>
</div>
</div>
<div id="decade" class="shiny-html-output"></div>
<img src="legend.png" height="40" width="200"/>
<div id="animatedChart" class="shiny-html-output rChart datamaps">
<!--SHINY.SINGLETON[3baccce32bc0f7826feb4e4cba99f2a4819ca0f3]-->
<!--/SHINY.SINGLETON[3baccce32bc0f7826feb4e4cba99f2a4819ca0f3]-->
<!--SHINY.SINGLETON[0a8a856702a58193a40b8a9d55e6be858f811bd3]-->
<!--/SHINY.SINGLETON[0a8a856702a58193a40b8a9d55e6be858f811bd3]-->
<!--SHINY.SINGLETON[5e0cfe96c53e8027c77948ee45e73c35ad9173f3]-->
<!--/SHINY.SINGLETON[5e0cfe96c53e8027c77948ee45e73c35ad9173f3]-->
</div><!--/html_preserve-->

--- .class #id 

## Interactive Chart - ShinyServer



--- .class #id 


## Prepare for Slidify


```r
## install packages
install.packages("devtools")
library(devtools)

## install slidify
install_github('slidify','ramnathv')
install_github('slidifyLibraries','ramnathv')

## load Slidify
library(slidify)

## set working directory
setwd('~/OneDrive/Radu Craioveanu/School/Data Science at John Hopkins on Coursera/Developing Data Products/CrimeUSA/CrimeUSASlidify')

## create the project 
author("CrimeUSASlidify")
```

--- .class #id 

## Create Slidify Preso 


```r
## edit index.html created in the working directory ./CrimeUSASlidify

## create the slidify presentation
slidify("index.Rmd") ## or runDeck("index.Rmd")

## browse the preso with your browser
browseURL("index.html")
```

--- .class #id 

## Slide 4


