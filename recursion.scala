// recursion.scala
object RecursionExample {
  def factorial(n: Int): Int = {
    if (n <= 1) 1
    else n * factorial(n - 1)
  }

  def main(args: Array[String]): Unit = {
    print("Enter an integer: ")
    val input = scala.io.StdIn.readLine()
    val param = input.toInt
    if (param == 0 && input != "0") {
      println("Invalid input")
    } else {
      println("Factorial: " + factorial(param))
    }
  }
}
