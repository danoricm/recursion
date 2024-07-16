# recursion.cr
def factorial(n : Int32) : Int32
  if n <= 1
    1
  else
    n * factorial(n - 1)
  end
end

puts "Enter an integer: "
input = gets
param = input.to_i

if param == 0 && input.chomp != "0"
  puts "Invalid input"
else
  puts "Factorial: #{factorial(param)}"
end
