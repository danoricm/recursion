// recursion.fan
class RecursionExample {
    static Int factorial(Int n) {
        if (n <= 1) {
            return 1
        } else {
            return n * factorial(n - 1)
        }
    }

    static Void main() {
        Env.cur.out.print("Enter an integer: ")
        Str input = Env.cur.in.readLine
        Int? param = input.toInt
        if (param == null) {
            echo("Invalid input")
        } else {
            echo("Factorial: ${factorial(param)}")
        }
    }
}
