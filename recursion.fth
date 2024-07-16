\ recursion.fth
: factorial ( n -- n )
    dup 1 <= if
        drop 1
    else
        dup 1- recurse *
    then ;

\ Your code here
s" Enter an integer: " type
accept
>number
if
    drop drop
    s" Invalid input" type
else
    drop
    factorial .
then
