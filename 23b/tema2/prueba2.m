i = 0;
x = 0.3;

imax = 20;
tol = 0.001;

while ( 1 )
      %newton-raphson
      x = x - f(x) / fp(x);

      fprintf("%3i %10.6f %10.6f \n", i, x, f(x) );

      if (abs(f(x)) < tol)
          break;
      endif

      i = i + 1;
      if ( i > 20)
        break;
      endif
end
