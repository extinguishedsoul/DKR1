program dkr1;
var x, y: real;   step: real;  
begin
  x := -10;   
  step := 0.3;
  writeln('------TABLE------');
  writeln(' x         | y');
  writeln('------------------');
  while x <= 7 do
  begin
    if x < -8 then
      y := 63 / Power(x, 0.1 * x) - Exp(x) / Power(x, 3)
    else if (x >= -8) and (x < -2) then
      y := (Power(x, 3) / Cos(x)) * (100 / Exp(x))
    else if (x >= -2) and (x < 5) then
      y := -x * Exp(x)
    else 
      y := Power(x, 0.1 * x) + Cos(2 * x);
    writeln('x = ', x:6:2, ' | y = ', y:10:3); 
    x := x + step; 
  end;
end.
