// recursion.fsx
let rec factorial n =
    if n <= 1 then
        1
    else
        n * factorial (n - 1)

printf "Enter an integer: "
let input = System.Console.ReadLine()
let param = int input

if param = 0 && input <> "0" then
    printfn "Invalid input"
else
    printfn "Factorial: %d" (factorial param)
