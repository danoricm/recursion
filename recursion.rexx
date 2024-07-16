/* recursion.rexx */
factorial: procedure
  parse arg param
  if param <= 1 then
    return 1
  else
    return param * factorial(param - 1)

say 'Enter an integer:'
parse pull input
param = input
if param == 0 & input \== "0" then
  say 'Invalid input'
else
  say factorial(param)
