-- recursion.adb
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Recursion is
   function Factorial (N : Integer) return Integer is
   begin
      if N <= 1 then
         return 1;
      else
         return N * Factorial (N - 1);
      end if;
   end Factorial;

   Input : Integer;
   Result : Integer;
begin
   Put_Line ("Enter an integer: ");
   Get (Input);
   Result := Factorial (Input);
   Put_Line ("Factorial: " & Integer'Image (Result));
end Recursion;
