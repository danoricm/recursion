// recursion.groovy
def factorial(n) {
    if (n <= 1) {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}

print "Enter an integer: "
def input = System.console().readLine()
def param = input.toInteger()
if (param == 0 && input != "0") {
    println "Invalid input"
} else {
    println "Factorial: ${factorial(param)}"
}
