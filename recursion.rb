# recursion.rb
def factorial(n)
  if n <= 1
      return 1
  else
      return n * factorial(n - 1)
  end
end

print "Enter an integer: "
input = gets.chomp
param = input.to_i

if param == 0 && input != "0"
  puts "Invalid input"
else
  puts factorial(param)
end
