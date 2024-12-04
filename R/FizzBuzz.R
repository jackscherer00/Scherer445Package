#' FizzBuzz
#'
#' This function accepts a vector of integers. It replaces all integers
#'  divisible by 3 with the word "Fizz", all integers divisible by 5
#'  with the word "Buzz", and all integers divisible by both 3 and 5
#'  with the word "Fizz-Buzz"
#'
#'  @param n A vector of integers
#'  @return The modified vector of strings, containing the original integers, with appropriate integers swapped out for words.
#'  @examples
#'  fizzbuzz(1:15)
#'
#'  @export
#'

FizzBuzz <- function( n ){

  if( n < 0 ){
    stop('Negative value entered')
  }else if( n == 0 ){
    stop('Zero entered')
  }else if ( is.infinite(n) ){
    stop('Infinite value entered')
  }

  output <- vector( length=n )  #vector to store output values

  for( i in 1:n ){
    if( i %% 3 == 0 & i %% 5 == 0 ){          #divisible by 3 and 5
      output[i] <- "Fizz-Buzz"
    } else if( i %% 3 == 0 ){        #divisible by 3
      output[i] <- "Fizz"
    } else if( i %% 5 == 0 ){          #divisible by 5
      output[i] <- "Buzz"
    } else{
      output[i] <- i
    }
  }
  return( output )                   #return modified vector
}


