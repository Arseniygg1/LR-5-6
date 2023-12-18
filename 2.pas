Program zad2;
var A:array [1..20] of integer;
i,j,k,pr,sum,x,y,b:integer;
begin
  k:=0;
  pr:=1;
  sum:=0;
  writeln('Введите x и y');
  read(x,y);
 
  for i:= 1 to 20 do
    begin
      A[i]:= random(-22,93);
    end;
  writeln('Элементы массива');
  for i:= 1 to 20 do 
    begin
    write(A[i]:3);
    end;
  for i:= 1 to 20 do 
    begin
      if (A[i] mod 2 = 0) and (i mod 2 <> 0) then 
        k += 1;
      if A[i] mod 2 <> 0 then 
        pr:= pr * A[i];
    end;
  b:=x;
  for i:= 1 to 20 do 
    begin
    if i = x then
      begin
        for j:=x to y do 
          begin
            while b <= y do 
              begin
                sum += A[i];
                b += 1;
              end;
          end;
      end;
    end;
    writeln();
    writeln('Kоличество четных элементов массива, стоящих на нечетных местах = ',k);
    writeln('Произведение нечетных элементов массива = ',pr);
    writeln(' Cумма элементов массива, принадлежащих заданному промежутку = ',sum);
end.