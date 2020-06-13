
#' Enable the scrollrevealjs library
#' @description The function activates the capabilities of the scrollrevealjs library. It should be run at the beginning of the UI

#' @return called for the side effect of activating the scrollrevealjs library
#' @export
#'
#' @examples \donttest{
#'
#' # Put the function at the beginning of your Shiny app, within the UI
#'
#' use_reveal()
#'
#'
#'
#' }





use_reveal <- function(){



  htmltools::tags$head(htmltools::tags$script(src="https://unpkg.com/scrollreveal"))



}
