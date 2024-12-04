#Test if the length of the output is the same as the input n
test.num <- 30
test_that( 'Lengths match', {
  expect_true( test.num == length(FizzBuzz(test.num)) )
} )

#Test if a inproper input results in an error
test_that( 'Errors are thrown when inproper input is entered', {
  expect_error( FizzBuzz(-15) )
  expect_error( FizzBuzz(0) )
  expect_error( FizzBuzz(Inf) )
} )
