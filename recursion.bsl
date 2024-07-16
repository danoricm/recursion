// recursion.bsl
Function Factorial(N)
    If N <= 1 Then
        Return 1;
    Else
        Return N * Factorial(N - 1);
    EndIf;
EndFunction

Var input;
Var param;
Var result;

input = Input("Enter an integer: ");
param = Val(input);

If param = 0 And input <> "0" Then
    Message("Invalid input");
Else
    result = Factorial(param);
    Message(result);
EndIf;
