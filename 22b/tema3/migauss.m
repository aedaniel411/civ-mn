A = [ 6 2 1 22; -1 8 22 30; 1 -1 6 23];
%A = [ 6 2 1; -1 8 22; 1 -1 6];

[ren, col] = size (A);

if (col == ren + 1)
    disp('si se puede resolver');
else
    disp('No es un sistema de ecuaciones');
    exit;
end

for ec = 1 : ren
    piv = A(ec,ec);
    A(ec,:) = A(ec,:) / piv;
    
    % Ceros
    for c = 1: ren
        %if ec ~= c
        if ne(ec,c) 
        % hacer ceros
            x = A(c,ec);
            A(c,:) = A(c,:)-(A(ec,:) * x);
        end
    end
end 

if sum(sum(A(:,1:ren))) == ren
    disp('solucion unica')
end

if sum(A(ren,:)) == 0
    disp('muchas')
end

if (sum(A(ren,1:ren)) == 0) & (A(ren, ren+1) ~= 0)
    disp('no tiene')
end
