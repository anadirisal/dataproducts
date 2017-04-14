
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(datasets)
library(dplyr)
library(car)
library(shiny)

shinyServer(
        function(input, output) {
                output$text1 <- renderText({input$text1})
                output$text2 <- renderText({input$text2})
                output$text3 <- renderText({input$text3})
                output$text4 <- renderText({
                             
                        if (input$goButton == 0) "You have not pressed the button"
                        else if (input$goButton == 1) "you pressed it once"
                        else "OK quit pressing it"
                })
                
                
                
        }
)

#require(graphics)
#pairs(mtcars, main = "mtcars data")
#coplot(mpg ~ disp | as.factor(cyl), data = mtcars,panel = panel.smooth, rows = 1)


