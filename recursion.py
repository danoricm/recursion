# recursion.py
def factorial(n):
    if n <= 1:
        return 1
    else:
        return n * factorial(n - 1)

input_value = input("Enter an integer: ")
try:
    param = int(input_value)
except ValueError:
    print("Invalid input")
else:
    print(factorial(param))
