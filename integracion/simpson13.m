clear;

n = 30;
a = 0.0;
b = 0.8;

hgrl = b-a;
h = hgrl / n;

suma1 = 0.0;

for i = 1 :2: n - 1 
    xi = a + (h * i);
    suma1 = suma1 + f(xi);
end 

suma2 = 0.0;

for i = 2 : 2: n - 2
    xi = a + (h * i);
    suma2 = suma2 + f(xi);
end 

suma = h * ((a + 4*suma1 + 2*suma2 + b) / 3); 

suma