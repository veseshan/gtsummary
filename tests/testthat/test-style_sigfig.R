context("test-style_sigfig")
testthat::skip_on_cran()

test_that("correct rounding near thresholds", {

  expect_equal(
    c(1.0001, 1, 0.9999, 0.90000) %>% style_sigfig(digits = 1),
    c("1", "1", "1", "0.9")
  )

  expect_true(
    style_sigfig(0.97, digits = 1) == "1"
  )

})



