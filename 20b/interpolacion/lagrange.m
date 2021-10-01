clear; clc;
format short;

x = [1 ; 4; 5; 6];
y = [0; 1.3862; 1.6094; 1.7917];

% Valor a buscar
xx = 2.0;

% Obtener el tamaño 
[n,m] = size (x);  

suma = 0.0;
for i=1:n
    
    multi = 1.0;
    for j=1:n
        if i ~= j
            multi = multi * ((xx - x(j)) / (x(i) -x(j)));
        end
    end
     
    suma = suma + (multi * y(i));
end

disp (num2str(suma));