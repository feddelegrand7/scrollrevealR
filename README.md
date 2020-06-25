
<!-- README.md is generated from README.Rmd. Please edit that file -->

# scrollrevealR

<!-- badges: start -->

![CRAN status](https://www.r-pkg.org/badges/version/scrollrevealR)

![](http://cranlogs.r-pkg.org/badges/grand-total/scrollrevealR?color=blue)

<!-- badges: end -->

`scrollrevealR` allows you to animate `shiny` elements when they scroll
into view using the [scrollrevealjs
library](https://scrollrevealjs.org/).

![](man/figures/exampleapp2.gif)

<br>

## Installation

You can install the `scrollrevealR` package from
[CRAN](https://CRAN.R-project.org/package=scrollrevealR) with:

``` r

install.packages("scrollrevealR")
```

You can install the development version of `scrollrevealR` from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("feddelegrand7/scrollrevealR")
```

## Example

The `scrollrevealR` package has two functions:

  - `use_reveal()`: This function doesn’t take any arguments. It
    activates the `scrollrevealjs` library. You can set it anywhere
    within the UI of your shiny app though it’s preferable to implement
    it at bottom of the UI.

  - `scroll_reveal()`: allows you to animate one or many shiny elements
    as they scroll into view.

Below an example of a simple shiny app that uses the `scrollrevealR`
package:

``` r
library(shiny)
library(scrollrevealR)

ui <- fluidPage(

  h1("Mtcars Plot"),

  br(), br(),

  plotOutput(outputId = "plt1"),

  br(), br(),

  h1("Iris Plot"),
  
  plotOutput(outputId = "plt2"),

  br(), br(),

  h1("ChickWeight Plot"),

  plotOutput(outputId = "plt3"),

  # Using the scroll_reveal() function -------------------------------------------
  scroll_reveal(target = c("#plt1", "#plt2", "#plt3"), duration = 2000, distance = "100px"),

  scroll_reveal(target = "h1", duration = 2000, distance = "100px"),
  # ----------------------------------------------------------------------------- 

  use_reveal(), # IMPORTANT! don't forget to activate the package with use_reveal()

  # Making some space at the end

  br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), br()

)

server <- function(input, output) {


output$plt1 <-  renderPlot({

    plot(mtcars)

  })


output$plt2 <- renderPlot({


  plot(iris)

})


output$plt3 <- renderPlot({


  plot(ChickWeight)


})


}

shinyApp(ui = ui, server = server)
```

![](man/figures/exampleapp.gif)

## Code of Conduct

Please note that the scrollrevealR project is released with a
[Contributor Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
