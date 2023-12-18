Program zad4;
var A:array [1..30] of integer;
B:array of integer;
i,k,j:integer;
begin
  k:=0;
  for i:=1 to 30 do
    begin
      A[i]:=random(-99,67);
      if A[i] mod 2 = 0 then
        begin
          k += 1;
        end;
    end;
  SetLength(B,k);
  j:=0;
  for i:=1 to 30 do
    begin
      if A[i] mod 2 = 0 then
        begin
          B[j]:=A[i];
          j+=1;
        end;
    end;
  write('A = ');
  for i:=1 to 30 do 
    write(A[i]:4);
  writeln();
  write('B = ');
  for i:=0 to k-1 do
    write(B[i]:4);
  
  
end.