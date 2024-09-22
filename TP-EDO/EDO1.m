function EDO1
  t0=0;
  dt=0.1;
  xv(1)=0;
  p = -2;
  xt(1)=0;
  for k=1: 6;
    tg(k)=t0+dt*(k-1);  %Pasos de abcisas
    gt(k)=1;            %Entrada
    k1(k)=dt*(gt(k)-(p*xt(k)));
    xt(k+1)=xt(k)+k1(k);
  endfor
endfunction

EDO1
