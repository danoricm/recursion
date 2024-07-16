NB. recursion.j
factorial =: 3 : 0
if. y <= 1 do.
    1
else.
    y * factorial y - 1
end.
)

NB. Input
echo 'Enter an integer: '
input =. ". (1!:1) 1
param =. ": input
if. param = 0 do.
    echo 'Invalid input'
else.
    echo factorial param
end.
