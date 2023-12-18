#' Get the 'gptoolsStan' include path for compiling 'Stan' programs.
#'
#' @export
#' @return Path to the directory containing source files for 'gptoolsStan' as characters.
#' @examples
#' \dontrun{
#' library(cmdstanr)
#' library(gptoolsStan)
#'
#' # Compile the model with paths set up to include 'Stan' sources from 'gptoolsStan'.
#' model <- cmdstan_model(
#'   stan_file="/path/to/your/model.stan",
#'   include_paths=gptools_include_path(),
#' )
#' }
gptools_include_path <- function() {
    system.file("extdata", package="gptoolsStan")
}
