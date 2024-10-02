[ci,xi] = Coeficientes_Nodos_Gauss_Hermite(4)

%El valor de la integral para n=4 sera:
f=@(y) abs(y);
I=1/4*sum(ci.*f(xi))