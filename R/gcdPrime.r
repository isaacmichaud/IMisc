#' Greatest Common Divisor
#'
#' This function computes the greatest common divisior (GCD) of two positive integers using the Euclidian algorithm.
#'
#' @param num1 The first integer
#' @param num2 The second integer
#'
#' @details This was written some abstract algebra class.
#'
#' @return gcd
#' @export
#'
#' @examples gcdPrime(16,24)
gcdPrime = function(num1,num2) {

	if ( num1 > num2 ) {

		temp1 = num1;
		temp2 = num2;

	} else {

		temp1 = num2;
		temp2 = num1;

		}
	flag = 0;

	while (flag ==0) {

	    temp3 = temp1 %% temp2;
		temp1 = temp2;


		if ( temp3 == 0 ) {
			flag = 1;
			} else {
			temp2 = temp3;
			}
		}
	return(temp2);
	}
