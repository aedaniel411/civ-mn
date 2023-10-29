A = [2 4; 1 3];
[nren, ncol] = size(A);

% vector x diferente de cero
x = ones(nren,1);
err = 0.01;
e = 1000000;

% repetir
while ( e > err)
    old = x
%   multiplicar A * x matmul 
    x = A * x;
%   buscar el mayor
    lm = max(abs (x));
%   dividirlo entre x
    x = x ./ lm ;
    e = sqrt(sum((x - old) .^2 ));
end 
disp(x)
disp(lm)


