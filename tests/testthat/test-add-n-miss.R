context("add_n_miss")

test_df <- data.frame(x = c(NA,2,3),
                      y = c(1,NA,3),
                      z = c(1,2,3))

df_n_miss <- data.frame(n_miss = c(1L,
                                   1L,
                                   0L))

test_df_answer <- dplyr::bind_cols(test_df,df_n_miss)


test_that("add_n_miss adds a column",{
  expect_equal(ncol(test_df) + 1, ncol(add_n_miss(test_df)))
})

test_that("add_n_miss adds a column named 'n_miss'",{
  expect_equal(names(add_n_miss(test_df)),
               c(names(test_df),"n_miss"))
})

test_that("add_n_miss returns the correct number",{

  expect_equal(add_n_miss(test_df),test_df_answer)

})
