A= [1 2 3 14; 3 5 2 19; 4 2 1 11];

[ren, col] = size(A);
%Repetir hasta tener unos en la diagonal
for i=1:ren   
    %pivote-- hacer uno en diagonal principal
    piv = A(i,i);
    A(i,:) = A(i,:) ./ piv;

    %hacer ceros, arriba y abajo del pivote
    for j=1:ren 
        if j~=i  
            x = A(j,i);
            A(j,:) = A(j,:) - (A(i,:) .* x);
        end 
    end 
%fin de repetir
end

disp(A)
