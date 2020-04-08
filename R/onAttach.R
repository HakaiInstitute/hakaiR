#' .onAttach
libname <- "hakaiR"
pkgname <- "hakaiR"
.onAttach <-function(libname, pkgname) {
  packageStartupMessage(c(cat(crayon::bgRed("Hakai")),
                          cat(crayon::bold(" Automated Knowledge and Insights in R \n")),
                          cat(crayon::bold("Successfully loaded ")),
                          cat(crayon::red("hakaiR package \n"))
                          )
  )
  my_theme <- ggplot2::theme_gray(base_size = 14)
  ggplot2::theme_set(my_theme)
}
