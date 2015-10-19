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
5. Shiny server app URL for CrimeUSA 
https://radunh.shinyapps.io/CrimeUSAShiny
6. Github project URL for CrimeUSA Shiny app
https://github.com/radunh/DevelopingDataProducts/tree/master/CrimeUSA/CrimeUSAShiny
7. Github project URL for CrimeUSA Slidify preso 

--- .class #id 

## Interactive Chart - ShinyUI



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




