Program Zad11;
var A:array [1..21] of integer;i,j,ch,n:integer;
begin
  ch:=0;
  for i:= 1 to 20 do 
    A[i]:=random(1,10);
  write('A = ');
  for i:=1 to 20 do
  begin
    write(A[i]:3);
    if A[i] mod 2 = 0 then 
      ch+=1;
  end;
  n:=21;
  for i:=1 to 20 do
    if A[i] mod 2 = 0 then 
    begin
      for j:=n-1 downto i do
          A[j+1]:=A[j];
          A[j]:=ch;
          break;
    end;
  writeln();
  write('A* = ');
  for i:=1 to n do
    write(A[i]:3);
end.