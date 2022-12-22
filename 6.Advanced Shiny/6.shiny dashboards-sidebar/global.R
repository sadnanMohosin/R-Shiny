library(shiny)
library(ggplot2)

data(mtcars)

#colChoices = colnames(mtcars)
xAxisChoices = colnames(mtcars)
yAxisChoices = colnames(mtcars)

cylinderChoices = unique(mtcars$cyl)