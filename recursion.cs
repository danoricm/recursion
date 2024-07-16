// recursion.cs
using System;

class Recursion
{
    static int Factorial(int n)
    {
        if (n <= 1)
            return 1;
        else
            return n * Factorial(n - 1);
    }

    static void Main()
    {
        Console.Write("Enter an integer: ");
        string input = Console.ReadLine();
        int param;
        if (!int.TryParse(input, out param))
        {
            Console.WriteLine("Invalid input");
            return;
        }
        int result = Factorial(param);
        Console.WriteLine("Factorial: " + result);
    }
}
