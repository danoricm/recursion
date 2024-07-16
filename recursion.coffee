# recursion.coffee
factorial = (n) ->
    if n <= 1
        1
    else
        n * factorial(n - 1)

input = prompt("Enter an integer: ")
param = parseInt(input)
if isNaN(param)
    console.log("Invalid input")
else
    console.log("Factorial: " + factorial(param))
