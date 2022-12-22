library(shiny)
library(shinydashboard)
library(DT)
library(readr)
library(dplyr)
library(ggplot2)
library(data.table)

allData <- as.data.frame(read_csv("~/Desktop/Folder/Udemy/allBaseballData.csv"))

playerChoices <- unique(allData$name)
yearChoices <- unique(allData$yearID)
metricChoices <- c("G", "AB", "R", "H", "Doubles", "Triples", "HR", "RBI", "BB", "SO")
teamChoices <- unique(allData$franchName)