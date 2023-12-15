#' Get the gptools include path for compiling Stan programs with `cmdstanr`.
#'
#' @export
gptools_include_path <- function() {
    system.file("extdata", package="gptoolsStan")
}
