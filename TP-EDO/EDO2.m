function EDO2(N_v)
  u0=2;
  t0=0;
  tf=2;
  dt=(tf-t0)/N_v;
  dim=N_v+1;
  u(1)=2;
  t(1)=t0;
  uext = zeros(1, dim); % Inicializar uext
  for k=2:dim
    t(k)=(k-1)*dt;     %Pasos t(k)
    du(k-1)=-2*t(k-1)+2*u(k-1)-1; %Valor de la pendiente
    u(k)=u(k-1)+dt*du(k-1);  %Valor u(k+1)
    uext(k-1)=exp(2 * t(k-1))-t(k-1)-1;
  endfor
  figure (1);
  plot (t, u, 'ob');
  hold on;
  figure (1);
  plot (t, uext, 'or');
  grid on;
endfunction
