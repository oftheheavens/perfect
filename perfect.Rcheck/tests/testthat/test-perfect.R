

test_that("function creates ggplot",{
  a <- total_perf(cps, C_SOP, C_SPP, C_OOP)
  expect_is(a,"ggplot")
})

test_that("function works", {
  expect_success(cps, C_SOP, C_SPP, C_OOP)
})

test_that("function cannot add non-numeric values", {
  expect_error(total_perf(steam_games, name, orignal_price, discount_price), "non-numeric input")
})
