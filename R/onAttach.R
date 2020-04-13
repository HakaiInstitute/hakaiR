#' .onAttachs
pkgname <- "hakaiR"
.onAttach <-function(libname, pkgname) {
  packageStartupMessage(c(cat(crayon::bgRed("Hakai")),
                          cat(crayon::bold(" automated knowledge and integration in R \n"))
                          )
  )
  my_theme <- ggplot2::theme_gray(base_size = 14)
  ggplot2::theme_set(my_theme)
}
