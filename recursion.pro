% recursion.pro
factorial(0, 1).
factorial(N, Result) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, Result1),
    Result is N * Result1.

main :-
    write('Enter an integer: '),
    read(Input),
    ( integer(Input) ->
        factorial(Input, Result),
        write('Factorial: '), write(Result), nl;
        write('Invalid input'), nl
    ).
