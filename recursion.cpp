// recursion.cpp
#include <iostream>
#include <string>
#include <sstream>

int factorial(int n) {
    if (n <= 1)
        return 1;
    else
        return n * factorial(n - 1);
}

int main() {
    std::string input;
    int param;

    std::cout << "Enter an integer: ";
    std::getline(std::cin, input);
    std::istringstream(input) >> param;

    if (param == 0 && input != "0") {
        std::cout << "Invalid input" << std::endl;
        return 1;
    }

    int result = factorial(param);
    std::cout << "Factorial: " << result << std::endl;
    return 0;
}
