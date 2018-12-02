context("test-add_figure")

test_that("caption", {
  expect_equal(add_figure("caption", "file"), "![caption](file)\n")
})
