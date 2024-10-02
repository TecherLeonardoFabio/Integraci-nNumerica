function I=Trapecios(f,x,n)
%formula de Trapecios Compuesta

h=(x(end)-x(1))/n;

pesos=[1 2*ones(1,n-1) 1];

I=h/2*sum(pesos.*f);
end


