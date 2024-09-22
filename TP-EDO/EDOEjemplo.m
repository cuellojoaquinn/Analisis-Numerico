function EDOEjemplo
  tf=10;
  t0=0;
  N=1000;
  dt=(tf-t0)/N;
  dim=N+1;
  %Valores iniciales de EDO
  t(1)=0;
  y(1)=4;
  yext(1)=y(1);
  for k=2:dim
    t(k)=t0+(k-1)*dt; %Pasos de dt
    u(k-1)=(t(k-1)/2)-(y(k-1)/2); %Valores pendiente
    %Imagen adelantada sobre r t
    yext(k)=6*exp(-(t(k)/2))-2+t(k); %Funcion exacta
    errorabs(k-1)=abs((yext(k-1)-y(k-1))); %Calculo de error abs
  endfor
  %Grafica de f obtenida con Euler
  figure(1);
  plot(t,y,'b');
  hold on;
  %Grafica de f exacta
  figure(1);
  plot(t,yext,'r');
  grid on;
  %Grafica de error abs en cada paso
  figure(2);
  plot(t(1:end-1),errorabs,'b')
endfunction
