# recursion.jq
def factorial(n):
    if n <= 1 then 1 else n * factorial(n - 1) end;

# Input
"Enter an integer: " | inputs

# Result
| tonumber | factorial
| "Factorial: \(.)" | .
