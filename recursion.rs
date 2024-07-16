// recursion.rs
use std::io;

fn factorial(n: i32) -> i32 {
    if n <= 1 {
        return 1;
    } else {
        return n * factorial(n - 1);
    }
}

fn main() {
    let mut input = String::new();
    println!("Enter an integer: ");
    io::stdin().read_line(&mut input).expect("Failed to read line");
    let param: i32 = input.trim().parse().expect("Please type a number!");
    if param == 0 && input.trim() != "0" {
        println!("Invalid input");
    } else {
        println!("Factorial: {}", factorial(param));
    }
}
