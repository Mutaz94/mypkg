test_that("lib_summary returns expected result", {
  res <- lib_summary()
  # we want to test the class since we expect data.frame
  expect_s3_class(res, "data.frame")
  # We want to make sure that lib_summary function returns two columns.
  expect_equal(ncol(res), 2)
  # Check columns name
  expect_equal(names(res), c("Library", "n_packages"))
  # Check Library column
  expect_type(res$Library, "character")
  # Check n_packages column is integer
  expect_type(res$n_packages, "integer")
})

test_that("lib_summary fails appropriately", {
  expect_error(lib_summary("foo"))
})

test_that("sizes argument works", {
  res <- lib_summary(sizes = TRUE)
  expect_equal(names(res), c("Library", "n_packages", "lib_size"))
  expect_equal(ncol(res), 3)
  expect_type(res$lib_size, "double")
})
