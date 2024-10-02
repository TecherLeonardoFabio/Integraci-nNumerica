function [ci,xi] = Coeficientes_Nodos_Gauss_Hermite(n)
%Con esta función de Matlab vamos a calcular los coeficientes y los nodos
%para la cuadratura de Gauss Hermite.

% La varible de entrada es el número de nodos que queremos calcular:n

%Las variables de la salida son los coeficientes (ci) y los nodos (xi)

%_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

%Definimos la variable simbólica
syms x

%Definimos los primeros dos (2) polinomios: (como matlab no puede trabajar
%                                           con la componente 0 empezamos
%                                           con la primera.
pk=1;

pk1=2*x;

%(En todos los polinomios añadimos una unidad porque matlab no trabaja con
%la compnente cero (0).

for k=0:n-2
    pk2=simplify((2*x).*pk1-2*(k+1).*pk)
    pk=pk1
    pk1=pk2

end

xi=double(solve(pk2==0))

ci= (2^(n-1).*factorial(n)*sqrt(pi))./(n^2.*double(subs(pk,x,xi)).^2)


end