## Testing testthat

# Requires packages:
# install.packages('testthat')
# install.packages('devtools')
# install.packages('remotes')

library(testthat)

# Create a function that takes any numeric data frame (all variables are numbers), finds the mean of all columns, then finds the maximum column mean, and the minimum column mean from that data frame, and returns those min and max mean values in a vector (min_mean_value, max_mean_val)

# apply(X = df, MARGIN = 2, FUN = mean, na.rm = TRUE)

min_max_mean <- function(df) {
  
  min_mean_value <- min(apply(X = df, MARGIN = 2, FUN = mean, na.rm = TRUE))
  max_mean_value <- max(apply(X = df, MARGIN = 2, FUN = mean, na.rm = TRUE))
  return(c(min_mean_value, max_mean_value))
  
}


# Test!

expect_length(min_max_mean(df = mtcars), 2)

expect_true(min_max_mean(mtcars)[1] < min_max_mean(mtcars)[2])

expect_type(min_max_mean(mtcars), "double")

