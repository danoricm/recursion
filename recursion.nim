# recursion.nim
proc factorial(n: int): int =
    if n <= 1:
        return 1
    else:
        return n * factorial(n - 1)

echo "Enter an integer: "
let input = readLine(stdin)
let param = parseInt(input)
if param == 0 and input != "0":
    echo "Invalid input"
else:
    echo "Factorial: ", factorial(param)
