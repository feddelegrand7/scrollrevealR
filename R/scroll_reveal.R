

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

scroll_reveal("h1")


