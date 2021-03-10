#' .onAttachs
pkgname <- "hakaiR"
.onAttach <-function(libname, pkgname) {
  packageStartupMessage(cat(crayon::bgRed("HakaiR"))
  )
  ggplot2::theme_set(hakaiR::hakademic_theme())
}
