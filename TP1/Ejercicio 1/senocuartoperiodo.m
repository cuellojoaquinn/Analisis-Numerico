function senocuartoperiodo
  for j=1:4
    %Inicializacion de variables
    t0 =0;tf=0.5;
    N = 10*(2^(j-1));
    w= pi;
    result= 1/w;
    dt(j) = (tf-t0)/N;
    dim=N+1;
    Im=0;
    p(1)= 0;
    %Discretizando funcion sen(pi*t)
    for k=1:dim
      tg(k)=t0+(k-1)*dt(j);
      yg(k)= sin(w*tg(k));
    endfor
    %Integracion por Reimann menor
    for k=1:dim-1 % dim-1=N
     Im=Im+dt(j)*yg(k);
    endfor
    %Calcular y guardar resultados necesarios para calcualar las pendiente
    im(j)= Im;
    er(j) = result - Im;
    logDt(j) = log10(dt(j));
    logEr(j) = log10(abs(er(j)));
    endfor
    %Calcular pendientes
    for k=2:4
     dpx = logDt(k) - logDt(k-1);
     dpy = logEr(k) - logEr(k-1);
     p(k) = dpy/dpx;
    endfor
    disp(p)
    %Imprimir en forma de tabla
    printf('dt       Im(dt)    Er        Log(dt)  Log(Er)  pendiente\n');
    for k=1:4
      printf('%f %f %f %f %f %f', dt(k), im(k), logDt(k),er(k), logEr(k), p(k));
      printf('\n')
    endfor
endfunction
senocuartoperiodo
