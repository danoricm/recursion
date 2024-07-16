-- recursion.e
function factorial(n)
    if n <= 1 then
        return 1
    else
        return n * factorial(n - 1)
    end if
end function

integer param
puts(1, "Enter an integer: ")
param = gets(0)
if atom_to_int(param) = 0 and param != "0\n" then
    puts(1, "Invalid input\n")
else
    puts(1, factorial(atom_to_int(param)))
end if
