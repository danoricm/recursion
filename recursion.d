// recursion.d
import std.stdio;

int factorial(int n) {
    if (n <= 1)
        return 1;
    else
        return n * factorial(n - 1);
}

void main() {
    writeln("Enter an integer: ");
    string input = stdin.readln();
    int param = input.to!int;

    if (param == 0 && input != "0\n") {
        writeln("Invalid input");
        return;
    }

    int result = factorial(param);
    writeln("Factorial: ", result);
}
