

#' Animate elements when scrolling to view them
#'
#' @param target The elements to animate as they scroll into view
#' @param duration The duration of the animation in milliseconds. Default to 1000 ms
#' @param delay The desired delay in milliseconds before triggering the animation. Default to 100 ms
#' @param distance Controls how far elements move when revealed. Default to 20px
#' @param reset logical, should the function animate the element each time it scrolls into view or only once. Defaults to TRUE.
#'
#' @return
#' @export
#'
#' @examples
#' if (interactive()) {
#'

#'ui <- fluidPage(

#'h1("TIME"),
#'br(),
#'br(),
#'h1("SPACE"),
#'br(),
#'br(),
#'h1("PIZZA"),
#'br(),
#'br(),
#'br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), br(),
#'br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), br(),
#'br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), br(),
#'br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), br(),
#'
#'# Using the scroll_reveal() function
#'scroll_reveal(target = "h1", duration = 2000, distance = "100px"),
#'
#'# IMPORTANT! don't forget to set up the scrollrevealR package
#'use_reveal(),
#')
#'server <- function(input, output) {
#'
#'}
#'
#'shinyApp(ui = ui, server = server)
#' }

scroll_reveal <- function(target, duration = 1000, delay = 100, distance = "20px",  reset = T){


  if(!is.character(target) | !is.character(distance)){
    stop("target and distance must be provided as characer strings")
  }


  if(reset){


    commande <- glue::glue("ScrollReveal().reveal('{target}', {{

    duration: {duration},
    reset: true,
    delay:{delay},
    distance: '{distance}'}});")

    htmltools::tags$script(htmltools::HTML(commande))




  } else {

    commande <- glue::glue("ScrollReveal().reveal('{target}', {{
                           duration: {duration},
                           delay: {delay},
                           distance: '{distance}'}});")

    htmltools::tags$script(htmltools::HTML(commande))



  }




}


