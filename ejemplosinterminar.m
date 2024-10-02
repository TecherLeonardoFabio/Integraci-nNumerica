
syms y
f=@(y)(cos(sqrt(y))./(2.*sqrt(y)));
I=sum(f(xi).*ci)


[ci, yi] = Coeficientes_Nodos_Gauss_Laguerre(8);