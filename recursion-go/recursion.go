// recursion.go
package main

import (
	"fmt"
	"strconv"
)

func factorial(n int) int {
	if n <= 1 {
		return 1
	}
	return n * factorial(n-1)
}

func main() {
	fmt.Print("Enter an integer: ")
	var input string
	fmt.Scanln(&input)
	param, err := strconv.Atoi(input)
	if err != nil || (param == 0 && input != "0") {
		fmt.Println("Invalid input")
		return
	}
	result := factorial(param)
	fmt.Println("Factorial:", result)
}
