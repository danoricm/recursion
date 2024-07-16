(* recursion.ml *)
let rec factorial n =
    if n <= 1 then
        1
    else
        n * factorial (n - 1)

let () =
    print_string "Enter an integer: ";
    let input = read_line () in
    let param = int_of_string input in
    if param = 0 && input <> "0" then
        print_endline "Invalid input"
    else
        print_endline (string_of_int (factorial param))
