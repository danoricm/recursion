; recursion.red
factorial: func [n][
    either n <= 1 [1] [n * factorial n - 1]
]

print "Enter an integer: "
input: to-integer ask ""
if input = 0 [print "Invalid input"] [print factorial input]
