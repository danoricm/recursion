// recursion.c
#include <stdio.h>
#include <stdlib.h>

int factorial(int n) {
    if (n <= 1)
        return 1;
    else
        return n * factorial(n - 1);
}

int main() {
    char input[10];
    int param;

    printf("Enter an integer: ");
    fgets(input, 10, stdin);
    param = atoi(input);

    if (param == 0 && input[0] != '0') {
        printf("Invalid input\n");
        return 1;
    }

    int result = factorial(param);
    printf("Factorial: %d\n", result);
    return 0;
}
