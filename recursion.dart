// recursion.dart
import 'dart:io';

int factorial(int n) {
    if (n <= 1) return 1;
    return n * factorial(n - 1);
}

void main() {
    stdout.write("Enter an integer: ");
    String? input = stdin.readLineSync();
    int param = int.tryParse(input!) ?? 0;
    if (param == 0 && input != "0") {
        print("Invalid input");
        return;
    }
    int result = factorial(param);
    print("Factorial: $result");
}
