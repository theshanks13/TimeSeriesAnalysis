#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   shiny::observeEvent(input$mybutton,{
     if (input$dbType == "Mongo DB") {
     mg1 <- mongoDbConnect(dbName = input$dbNameInput,host = input$hostNameInput,port = input$portNameInput)
     print(dbShowCollections(mg1))
     showNotification(ui = 'connecting')
     }
     else{
       showNotification(ui = "Haven't configured that db yet")
     }
   })
 
    
  })
