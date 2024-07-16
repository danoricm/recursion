-- recursion.lua
function factorial(n)
    if n <= 1 then
        return 1
    else
        return n * factorial(n - 1)
    end
end

io.write("Enter an integer: ")
input = io.read("*n")
if input == nil then
    print("Invalid input")
else
    print("Factorial: " .. factorial(input))
end
