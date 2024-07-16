# recursion.r
factorial <- function(n) {
    if (n <= 1) {
        return(1)
    } else {
        return(n * factorial(n - 1))
    }
}

cat("Enter an integer: ")
input <- as.integer(readLines("stdin", n=1))
if (is.na(input) && input != 0) {
    cat("Invalid input\n")
} else {
    cat("Factorial: ", factorial(input), "\n")
}
