#' @title FUNCTION_TITLE
#' @description FUNCTION_DESCRIPTION
#' @param A PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @rdname AHP
#' @export
#'
AHP = function(A) {
  rlt = eigen(A)
  Lmax = Re(rlt$values[1]) # Maximum eigenvalue
  # Weight vector
  W = Re(rlt$vectors[,1]) / sum(Re(rlt$vectors[,1]))
  # Consistency index
  n = nrow(A)
  CI = (Lmax - n) / (n - 1)
  # Consistency ratio
  # Saaty's random Consistency indexes
  RI = c(0,0,0.58,0.90,1.12,1.24,1.32,1.41,1.45,1.49,1.51)
  CR = CI / RI[n]
  list(W = W, CR = CR, Lmax = Lmax, CI = CI)
}

