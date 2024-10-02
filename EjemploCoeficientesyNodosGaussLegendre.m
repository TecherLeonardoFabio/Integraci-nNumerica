%Ejemplo coeficientes de Gauss Legendre
f = @(x) exp(-x.^2);
a=1;
b=1.5;
n=2;

[xi, ci] = xcGaussLegendre(n)