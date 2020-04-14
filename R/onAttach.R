#' .onAttachs
pkgname <- "hakaiR"
.onAttach <-function(libname, pkgname) {
  packageStartupMessage(c(cat(crayon::bgRed("HakaiR")),
                          cat(crayon::bold(" automated knowledge and integration in R \n"))
                          )
  )
  ggplot2::theme_set(hakaiR::hakademic_theme())
}
