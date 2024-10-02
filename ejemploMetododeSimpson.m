%Ejemplo con la regla de simpson
f = @(x) exp(-x.^2);
a=1;
b=1.5;
n=2;
I=Simpson(f,a,b,n)