// recursion.java
import java.util.Scanner;

public class Recursion {
    public static int factorial(int n) {
        if (n <= 1) {
            return 1;
        } else {
            return n * factorial(n - 1);
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter an integer: ");
        String input = scanner.nextLine();
        int param;
        try {
            param = Integer.parseInt(input);
        } catch (NumberFormatException e) {
            System.out.println("Invalid input");
            return;
        }
        System.out.println("Factorial: " + factorial(param));
    }
}
