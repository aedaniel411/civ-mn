clear;

n = 30;

a = 0.0;
b = 0.8;

hgrl = b-a;
h = hgrl / n;

suma = 0.0;
for i = 0: n - 1
    x0 = a + (h * i);
    x1 = a + (h * (i +1));
    
    area = (f(x0) + f(x1)) * h / 2.0;
    suma = suma + (area);
end 

suma