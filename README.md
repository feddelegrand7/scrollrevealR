
<!-- README.md is generated from README.Rmd. Please edit that file -->

# scrollrevealR

<!-- badges: start -->

[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/scrollrevealR)](https://cran.r-project.org/package=scrollrevealR)

[![CRAN\_time\_from\_release](https://www.r-pkg.org/badges/ago/scrollrevealR)](https://cran.r-project.org/package=scrollrevealR)

[![metacran
downloads](https://cranlogs.r-pkg.org/badges/scrollrevealR)](https://cran.r-project.org/package=scrollrevealR)

[![metacran
downloads](https://cranlogs.r-pkg.org/badges/grand-total/scrollrevealR)](https://cran.r-project.org/package=scrollrevealR)

[![Travis build
status](https://travis-ci.com/feddelegrand7/scrollrevealR.svg?branch=master)](https://travis-ci.com/feddelegrand7/scrollrevealR)

[![R
badge](https://img.shields.io/badge/Build%20with-♥%20and%20R-blue)](https://github.com/feddelegrand7/scrollrevealR)

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

In order to use `scrollrevealR`, you only need to use one function:

  - `scroll_reveal()`: allows you to animate one or many shiny elements
    as they scroll into view.

#### Important: when you apply the `scroll_reveal()` function on Shiny Tables, they tend to disappear when you scroll down to check the last observations of the table which is annoying. In order to deal with this issue, you can use the `reset = FALSE` argument which will trigger an animation only once.

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

## Commercial License

If you use the `scrollrevealR` package for commercial usage, You can buy
a Commercial License from the `scrollreveal`
[website](https://scrollrevealjs.org/pricing/).

## Code of Conduct

Please note that the scrollrevealR project is released with a
[Contributor Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
