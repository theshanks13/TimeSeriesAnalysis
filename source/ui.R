#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)



            
            
            
# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Time Series Notebook"),
  
 
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      tabsetPanel(type = "tabs",
                  tabPanel("Data Load"),
                  tabPanel("Data Clean"),
                  tabPanel("Time Series Exploratory Data Analysis"),
                  tabPanel("Modeling"),
                  tabPanel("Model Scoring")),
      
      
    
    )
  )
))