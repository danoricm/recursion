(* recursion.sml *)
fun factorial n =
    if n <= 1 then
        1
    else
        n * factorial (n - 1)

val () =
    print "Enter an integer: ";
    let
        val input = TextIO.inputLine TextIO.stdIn
        val param = Option.valOf (Int.fromString (String.trim input))
    in
        if param = 0 andalso input <> "0\n" then
            print "Invalid input\n"
        else
            print (Int.toString (factorial param) ^ "\n")
    end
