#' @useDynLib zigrexample iota_
iota <- function(n) .Call(iota_, n)