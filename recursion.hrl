% recursion.hrl
-module(recursion).
-export([factorial/1, main/0]).

factorial(N) when N =< 1 -> 1;
factorial(N) -> N * factorial(N - 1).

main() ->
    io:format("Enter an integer: "),
    {ok, [Input]} = io:fread("", "~d"),
    if Input =:= 0 ->
        io:format("Invalid input~n");
       true ->
        Result = factorial(Input),
        io:format("Factorial: ~p~n", [Result])
    end.
