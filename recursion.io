// recursion.io
factorial := method(param,
    if(param <= 1,
        return 1,
        return param * factorial(param - 1)
    )
)

print("Enter an integer: ")
input := File standardInput readLine
param := input asNumber
if(param == 0 and input != "0",
    "Invalid input" println,
    factorial(param) println
)
