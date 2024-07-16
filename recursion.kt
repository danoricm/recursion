// recursion.kt
fun factorial(n: Int): Int {
    return if (n <= 1) 1 else n * factorial(n - 1)
}

fun main() {
    print("Enter an integer: ")
    val input = readLine()
    val param = input?.toIntOrNull()
    if (param == null) {
        println("Invalid input")
    } else {
        println("Factorial: ${factorial(param)}")
    }
}
