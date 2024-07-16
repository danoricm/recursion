! recursion.factor
: factorial ( n -- n )
    dup 1 <= [
        drop 1
    ] [
        dup 1 - recurse *
    ] if ;

! Your code here
"Enter an integer: " print flush
readln string>number
[ factorial . ] if
