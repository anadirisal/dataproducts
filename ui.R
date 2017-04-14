
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

library(markdown)
library(car)
shinyUI(pageWithSidebar(
        headerPanel("Guess the variables that impacts the MPG of a car. Choices are Cyl, HP and Disp"),
        
        sidebarPanel(
                textInput(inputId="text1", label = "Most important variable"),
                textInput(inputId="text2", label = "Second important variable"),
                textInput(inputId="text3", label = "Third important variable"),
                actionButton("goButton", "Click when done")
        ),
        mainPanel(
                p('You wrote for most imp. var 1'),
                textOutput('text1'),
                p('You wrote for most imp. var 2'),
                textOutput('text2'),
                p('You wrote for most imp. var 3'),
                textOutput('text3')
                
                
        )
))




