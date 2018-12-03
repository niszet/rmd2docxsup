context("test-add_figure")
library("rmd2docxsup")

test_that("caption", {
  expect_equal(add_figure("caption", "file"), "![caption](file)\n")
  expect_equal(add_figure("caption", "file", 100), "![caption](file){width=100}\n")
})
