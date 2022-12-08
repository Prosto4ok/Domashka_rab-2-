uses crt;
var
  a, b, h, s,  s1: real;
  n, i: int64;
  u: char;
  g:boolean;
  
function f(x: real): real;
begin
  f := 2 * power(x, 3) + 1 * power(x, 2) + 5 * x + 19;
end;

function f1(x: real): real;
begin
  f1 :=   1 / 2 * power(x, 4) + 1 / 3 * power(x, 3) + 5 / 2 * power(x, 2) + 19 * x;
end;


procedure prog;
begin
clrscr;
  repeat
    write('Введите левую границу интервала от -100 до 0 a = ');
    readln(a);
  until (a >= -100) and (a <= 0);
  repeat
    write('Введите правую границу интервала от 0 до 100 b = ');
    readln(b);
  until (b >= 0) and (b > a) and (b <= 100);
  repeat
    write('Введите число разбиений от 1000000 до 1000000000000 n = ');
    readln(n);
  until (n >= 10) and (n <= 100000000000);
  h := (b - a) / n;
  s := f1(b) - f1(a);
  writeln ('Данные записаны)');
  writeln ('Нажмите enter для выхода на главное меню');
  g:= true;
  readkey;
end;
  
procedure toch;
begin
clrscr;
if g then begin
  writeln('S=', s:0:3);
  end else writeln ('Введите сначала данные');;
  writeln ('Нажмите enter для выхода на главное меню');
  readkey;
end;


procedure prib;
begin
clrscr;
if g then begin
  for var i := 1 to n do
    begin
      s1 := s1 + f(a + i * h);
    end;
  s1 := s1 * h;
  writeln('Приближенное значение = ', s1:0:5);
  end else writeln ('Введите сначала данные');
  writeln ('Нажмите enter для выхода на главное меню');
  readkey;
end;
   
   
procedure abs;
begin
clrscr;
if g then begin
  writeln('Погрешность = ', abs(s - s1):0:5);
  end else writeln ('Введите сначала данные');
  writeln ('Нажмите enter для выхода на главное меню');
  readkey;
end;

procedure menu1;

begin
  clrscr;
  println('Чтобы ввести данные нажмите 1');
  println ('Чтобы вывести точное значение нажмите 2');
  println('Чтобы выбрать приближенное значение введите 3');
  println('Чтобы выбрать погрешность введите 4');
  println ('Чтобы выйти нажмите 5');
  print('Выберите программу: ');
  read(u);
  case u of 
    '1': prog;
    '2': toch;
    '3': prib;
    '4': abs;
    '5': exit;
  end;
end;


begin
  while true do
    menu1();
end.