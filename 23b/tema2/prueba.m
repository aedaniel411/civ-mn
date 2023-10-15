i = 0;
a = 0;
b = 1;

imax = 20;
tol = 0.001;

while ( 1 )
      %xr = bisec(a, b);
      xr = cuerda(a,b);

      fprintf("%3i %10.6f %10.6f \n", i, xr, f(xr) );

      if (f(a) * f(xr) < 0 )
        b = xr;
      else
        a = xr;
      end

      if (abs(f(xr)) < tol)
          break;
      endif

      i = i + 1;
      if ( i > 20)
        break;
      endif
end
