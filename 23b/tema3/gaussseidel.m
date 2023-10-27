clear;

A= [1 2 3 14; 3 5 2 19; 4 2 1 11];
[ren, col] = size(A);

% Ordenar (Tarea: Ordenar en automatico)
A= [4 2 1 11; 3 5 2 19; 1 2 3 14;];

%proponer valores iniciales de 1 para x
x = ones(1,ren);
old = x;

%Despejar veriables
b = A(:, col);
a = A(:, 1:col-1);
err = 0.9;
e = 10000;

for j = 1:10
    for p=1:ren 
        s = sum(a(p,:) .* x) - a(p,p) * x(p);
        x(p) = (b(p) - s) ./ a(p,p)  ;
        
    end
    e = sqrt(sum((x - old) .^ 2));
    old = x;
    disp(x)
    disp(e)
end 