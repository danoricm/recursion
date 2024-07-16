// recursion.chpl
proc factorial(n: int): int {
    if n <= 1 then return 1;
    return n * factorial(n - 1);
}

writeln("Enter an integer: ");
var input: string;
readln(input);
var param = input:int;
writeln("Factorial: ", factorial(param));
