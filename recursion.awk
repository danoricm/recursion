# recursion.awk
function factorial(n) {
    if (n <= 1)
        return 1
    else
        return n * factorial(n - 1)
}

BEGIN {
    printf "Enter an integer: "
    getline input < "-"
    result = factorial(input)
    printf "Factorial: %d\n", result
}
