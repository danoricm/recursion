// recursion.pike
int factorial(int param) {
    if (param <= 1) {
        return 1;
    } else {
        return param * factorial(param - 1);
    }
}

int main() {
    write("Enter an integer: ");
    string input = Stdio.stdin.gets();
    int param = sscanf(input, "%d");
    if (param == 0 && input != "0") {
        write("Invalid input\n");
    } else {
        write(sprintf("%d\n", factorial(param)));
    }
    return 0;
}
