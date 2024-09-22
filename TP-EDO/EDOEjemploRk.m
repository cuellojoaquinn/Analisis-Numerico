function EDOEjemploRK
  t0=0;
  tf=10;
  N=40;
  w=1/2;
  dt=(tf-t0)/N;
  dim = N+1;
  t(1)=0;
  y(1)=4;
  u(1)=(t(1)/2)-(y(1)/2); %Pendiente recta tm,ym
  for k=2:dim
    t(k)=t0+(k-2)*dt; %Pasos en abcisas
    k1(k-1)=dt*u(k-1);
    %Calculo punto G
    tg(k-1)=t(k-1)+dt/(2*w);
    yg(k-1)=y(k-1)+(k1(k-1)/(2*w));
    u(k)=(tg(k-1)/2)-(y(k-1)/2); %Pendiente recta tg,yg
    k2(k-1)=dt*u(k);

    %Punto siguiente
    y(k)=y(k-1)+((1-w)*k1(k-1))+(w*k2(k-1));
    t(k)=t(k-1)+dt;
  endfor
  disp(y);
  disp(k1);
  disp(k2);
  figure(1);
  plot(t,y,'r');
  grid on;
endfunction
