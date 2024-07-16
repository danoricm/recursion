# recursion.exs
defmodule Recursion do
  def factorial(n) when n <= 1, do: 1
  def factorial(n), do: n * factorial(n - 1)
end

IO.write("Enter an integer: ")
input = IO.gets("") |> String.trim()
param = String.to_integer(input)
if param == 0 and input != "0" do
  IO.puts("Invalid input")
else
  IO.puts("Factorial: #{Recursion.factorial(param)}")
end
