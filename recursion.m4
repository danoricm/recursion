# recursion.m4
define(`factorial', `param')dnl
define(`x', `param + 10')dnl
ifelse(x > 15, `x - 5', `x + 5')dnl
define(`x', `x + 0 + 1 + 2')dnl
x

define(`main', `input(`Enter an integer: ')dnl
define(`param', `parse(`$1')')dnl
ifelse(param == 0 && $1 != `0', `Invalid input', `factorial(param)')dnl
')dnl
main
