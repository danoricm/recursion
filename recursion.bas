' recursion.bas
DECLARE FUNCTION Factorial (N)

FUNCTION Factorial (N)
    IF N <= 1 THEN
        Factorial = 1
    ELSE
        Factorial = N * Factorial(N - 1)
    END IF
END FUNCTION

DIM Input AS INTEGER
DIM Result AS INTEGER

PRINT "Enter an integer: ";
INPUT Input
Result = Factorial(Input)
PRINT "Factorial: "; Result
