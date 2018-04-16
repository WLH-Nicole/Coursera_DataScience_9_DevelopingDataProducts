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
  titlePanel("Easy Tips Calculator"),
  
  # Sidebar with a slider input for Tips % 
  sidebarLayout(
    sidebarPanel(
            h2("Bill Total"),
            numericInput("numeric", "Total $ ", 
                         value = 1, min = 1, max = 999999, step = 1),
            h2("Tips %"),
            sliderInput("slider1", "% of bill total", 
                        value = 15, min = 0, max = 100),
#            checkboxInput("splitBill", "Split bill:"),
            h2("Split Bill"),
            sliderInput("slider2", "Number of guests", 
                        value = 1, min = 1, max = 99)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
            h2("Please input Bill Total, Tips % and Split Bill to generate final amount for your bill !"),
            h3("Bill Total: $"),
            textOutput("text1"),
            h3("Tips Total: $"),
            textOutput("text2"),
            h3("Final Total: $"),
            textOutput("text3"),
            h3("Tips %:"),
            textOutput("text4"),
            h3("Split Bill by:"),
            textOutput("text5"),
            h3("Split Total Per Person: $"),
            textOutput("text6")
    )
  )
))
