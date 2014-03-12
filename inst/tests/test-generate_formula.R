context("generate_formula function")


test_that("it returns the right output", {
  d <- "my_dep"
  i <- c("x1","x2","x3")
  expect_equal(generate_formula(d, i), as.formula(my_dep ~ x1 + x2 + x3))
})

test_that("it returns a formula type", {
  d <- "my_dep"
  i <- c("x1","x2","x3")
  expect_equal(class(generate_formula(d, i)), "formula")
})

test_that("it only accepts the first param of the list if dep_var is vectorized", {
  d <- c("this_dep","not_this_dep")
  i <- c("x1","x2","x3")
  expect_warning(generate_formula(d, i))
})