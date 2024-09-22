function EDOParcial1
  x(1)=0;
  y1(1)=0;
  y2(1)=0;
  t0=0;
  tf=12.5664;
  N=10;
  dt=(tf-t0)/N;
  dim=N+1;
  for k=2:dim
    x(k)=dt*(k-1); %Vector de absisa

    dx1(k-1)=x(k-1);
    dx2(k-1) = -2^2 * x(k-1) - (0.02) * x(k-1) - sin(3 * (k-1));

    kx1(k-1)=y1(k-1)+dt*dx1(k-1);
    kx2(k-1)=y2(k-1)+dt*dx2(k-1);

    y1(k)=y1(k-1)+kx1(k-1);
    y2(k)=y2(k-1)+kx2(k-1);
  endfor

  figure(1);
  plot(x,y1,'b');
  hold on;
  plot(x,y2,'r');
  grid on;
endfunction
