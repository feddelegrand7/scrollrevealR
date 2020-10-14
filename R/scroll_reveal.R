

#' Animate elements when scrolling to view them
#'
#' @param target The elements to animate as they scroll into view
#' @param duration The duration of the animation in milliseconds. Defaults to 1000 ms
#' @param delay The desired delay in milliseconds before triggering the animation. Defaults to 100 ms
#' @param distance Controls how far elements move when revealed. Defaults to 20px
#' @param origin Specifies what direction elements come from when revealed ("top", "bottom", "right", "left"). Defaults to "bottom"
#' @param reset logical, should the function animate the element each time it scrolls into view or only once. Defaults to TRUE.
#'
#' @return An animated shiny element
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
#')
#'server <- function(input, output) {
#'
#'}
#'
#'shinyApp(ui = ui, server = server)
#' }

scroll_reveal <- function(target, duration = 1000, delay = 100, distance = "20px", origin = "bottom", reset = TRUE){



  if (!is.character(target) | !is.character(distance)) {
    stop("target and distance must be provided as characer strings")
  }



  if (reset) {
    commande <- glue::glue(
      "ScrollReveal().reveal('{target}', {{

    duration: {duration},
    reset: true,
    origin:'{origin}',
    delay:{delay},
    distance: '{distance}'}});"
    )





  } else {
    commande <- glue::glue(
      "ScrollReveal().reveal('{target}', {{
                           duration: {duration},
                           origin:'{origin}',
                           delay: {delay},
                           distance: '{distance}'}});"
    )



  }


  htmltools::tagList(scrollreveal_dep(),

                     htmltools::tags$script(htmltools::HTML(commande)))



}


