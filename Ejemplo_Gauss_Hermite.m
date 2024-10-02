%Ejemplo con función de Gauss Hermite
[ci,xi] = Coeficientes_Nodos_Gauss_Hermite(5)
syms x;
f=@(x)(1);

f_1=matlabFunction(exp(-x^2));

Integral_Exacta=integral(f_1,-inf,inf)

Integral_aprox_5=sum(ci.*f(xi))