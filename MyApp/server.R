

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
        output$text1 <- renderText(input$numeric)
        output$text2 <- renderText(input$numeric*(input$slider1/100))
        output$text3 <- renderText(input$numeric*(1+(input$slider1/100)))
        output$text4 <- renderText(input$slider1)
            
        output$text5 <- renderText(input$slider2)
        output$text6 <- renderText(round(input$numeric*(1+(input$slider1/100))/input$slider2, 2))

})
