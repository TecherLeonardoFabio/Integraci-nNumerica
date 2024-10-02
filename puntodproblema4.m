%solcuion problema 4 punto No d

syms y
f=@(y)(cos(sqrt(y))./(2.*sqrt(y)));
I=sum(f(xi).*ci)

[ci,xi] = Coefecientes_Nodos_Gauss_Laguerre(8)