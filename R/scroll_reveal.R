

#' Animate elements when scrolling to view them
#'
#' @param target The elements to animate as they scroll into view
#' @param duration The duration of the animation in milliseconds. Default to 1000 ms
#' @param delay The desired delay in milliseconds before triggering the animation. Default to 100 ms
#' @param distance Controls how far elements move when revealed. Default to 20px
#' @param reset Boolean, should the function animate the element each time it scrolls into view or only once. Defaults to TRUE.
#'
#' @return
#' @export
#'
#' @examples

scroll_reveal <- function(target, duration = 1000, delay = 100, distance = "20px",  reset = T){


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


