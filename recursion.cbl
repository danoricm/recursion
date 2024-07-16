       IDENTIFICATION DIVISION.
       PROGRAM-ID. RecursionExample.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 PARAM        PIC 9(4).
       01 RESULT       PIC 9(9).
       01 INPUT        PIC X(4).

       PROCEDURE DIVISION.
       MAIN-LOGIC.
           DISPLAY "Enter an integer: ".
           ACCEPT INPUT.
           MOVE FUNCTION NUMVAL(INPUT) TO PARAM.

           IF PARAM = 0 AND INPUT NOT EQUAL "0"
               DISPLAY "Invalid input"
               STOP RUN
           END-IF.

           CALL 'FACTORIAL' USING PARAM GIVING RESULT.
           DISPLAY "Factorial: " RESULT.
           STOP RUN.

       ENTRY 'FACTORIAL' USING PARAM RETURNING RESULT.
           IF PARAM <= 1
               MOVE 1 TO RESULT
           ELSE
               SUBTRACT 1 FROM PARAM
               CALL 'FACTORIAL' USING PARAM GIVING RESULT
               MULTIPLY PARAM BY RESULT GIVING RESULT
           END-IF.
           EXIT PROGRAM.
