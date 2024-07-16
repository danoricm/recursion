// recursion.boo
import System

def Factorial(n as int) as int:
    if n <= 1:
        return 1
    else:
        return n * Factorial(n - 1)

print "Enter an integer: "
input = Console.ReadLine()
param = int.Parse(input)
result = Factorial(param)
print result
