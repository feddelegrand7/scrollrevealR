
#' Enable the scrollrevealjs library
#' @description The function activates the capabilities of the scrollrevealjs library. The user can put it anywhere within the UI but it's preferable to implement it at the bottom of the UI.

#' @return called for the side effect of activating the scrollrevealjs library
#' @export
#'
#' @examples \donttest{
#'
#' # Put the function at the bottom of the UI
#'
#' use_reveal()
#'
#'
#'
#' }





use_reveal <- function(){



  htmltools::tags$head(htmltools::tags$script(src="https://unpkg.com/scrollreveal"))



}
