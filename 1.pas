program zad1;
var A:array [1..10] of integer;
i:integer;
begin
for i:= 1 to 10 do 
readln(A[i]:3);
for i:=1 to 10 do
begin
if A[i] >= 0 then 
  write(0:3)
else
  write(Sqr(A[i]));
end; 
end.