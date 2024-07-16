% recursion.m
function result = factorial(n)
    if n <= 1
        result = 1;
    else
        result = n * factorial(n - 1);
    end
end

input = input('Enter an integer: ', 's');
param = str2num(input);
if isempty(param)
    disp('Invalid input')
else
    disp(['Factorial: ', num2str(factorial(param))])
end
