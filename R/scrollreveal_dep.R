
#' Create an HTML dependency for scrollreveal.js
#'
#' @rdname html-dependencies
#' @export
#'
#'


scrollreveal_dep <- function() {
  htmltools::htmlDependency(
    name = "scrollreveal",
    version = "4.0.7",
    package = "scrollrevealR",
    src = c(file = "scrollreveal"),
    script = "scrollreveal.min.js",
    all_files = FALSE
  )
}
