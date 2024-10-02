%Ejemplo con Cuadratura de Gauss Laguerre
[ci,xi] = Coefecientes_Nodos_Gauss_Laguerre(5)
syms x;

f=@(x)(cos(x));

f_1=matlabFunction(exp(-x)*cos(x))

Integral_exacta=integral(f_1, 0 ,inf)

Integral_aprox_5=sum(ci.*f(xi))

Integral_exacta-Integral_aprox_5

