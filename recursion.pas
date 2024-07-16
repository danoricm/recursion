{ recursion.pas }
program RecursionExample;

function Factorial(Param: Integer): Integer;
begin
    if Param <= 1 then
        Factorial := 1
    else
        Factorial := Param * Factorial(Param - 1);
end;

var
    Input: string;
    Param: Integer;

begin
    Write('Enter an integer: ');
    Readln(Input);
    Val(Input, Param);
    if (Param = 0) and (Input <> '0') then
        Writeln('Invalid input')
    else
        Writeln('Factorial: ', Factorial(Param));
end.
