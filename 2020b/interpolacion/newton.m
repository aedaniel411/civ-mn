clear; clc;
format short;

x = [1 ; 4; 5; 6];
yy = [0; 1.3862; 1.6094; 1.7917];

% Obtener el tamaño 
[n,m] = size (x);  

y = [yy zeros(n, n-1)];

for k = 1 : n-1
    for j = 1 : n-k
      i = j + 1;
      y (j, k+1) = ( y(i,k) - y(j,k) ) / (x(j + k) - x(j));
    end 
end 

y

