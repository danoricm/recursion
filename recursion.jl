# recursion.jl
function factorial(n::Int)
    if n <= 1
        return 1
    else
        return n * factorial(n - 1)
    end
end

println("Enter an integer: ")
input = readline()
param = parse(Int, input)
if param == 0 && input != "0"
    println("Invalid input")
else
    println("Factorial: ", factorial(param))
end
