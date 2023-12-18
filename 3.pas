Program zad3;
var A:array [1..20] of integer;
i,max,n1,n2,min,n3:integer;
begin
max:=1;
min:=65;
for i:=1 to 20 do
  A[i]:=random(-52,65);
write('Элементы массива = ');
for i:=1 to 20 do
  write(A[i]:3);
writeln();
for i:=1 to 20 do
 begin 
  if A[i] > max then
    begin
      max:= A[i];
      n1:=i;
    end;
  if A[i] < min then 
    begin
      min:=A[i];
      n2:=i;
    end;
  if A[i] mod 5 = 0 then
    n3:=i;
  end;
writeln('Hаибольший элемент массива = ',max,' Его номер = ',n1);
writeln('Hаименьший элемент массива = ',min,' Его номер = ',n2);
writeln('Номер последнего элемента кратного 5 = ',n1);
end.