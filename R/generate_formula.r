#' Helper function to generate a formula based on independent and
#' dependent variables.
#'
#' @param dep_var a string. The dependent variable for the formula.
#' @param indep_var a list. The independent variables to generate the formula.

generate_formula <- function(dep_var, indep_vars) {
  if (length(dep_var) > 1 && is.vector(dep_var)) warning("dep_var only takes the first param of a vector")
  if (length(indep_vars) == 0) indep_vars <- 'NULL'
  else if (length(indep_vars) > 1) indep_vars <- paste(indep_vars, collapse = '+')
  formula(paste(dep_var, '~', indep_vars))
}
