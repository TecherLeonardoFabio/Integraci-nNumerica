function I = Simpson38(f, a, b, n)
   	 % formula de simpson compuesta 

    	h=(b-a))/n;   x=a:h:b;

    	pesos=ones(1,n+1); pesos(2:2:n)=3; pesos(3:2:n)=3; pesos(4:2:n-1)=2;

   	 I=3h/8*sum(pesos.*f);
end
