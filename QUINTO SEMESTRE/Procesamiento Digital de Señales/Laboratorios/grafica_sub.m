n=-50:50;
x=rampa(n);
%x=exponencial(2,n);
%x=escalon(n+10).*rampa(-n)+(escalon(n)-escalon(n-11)).*rampa(n);
%x=rampa(n+20).*(escalon(n+20)-escalon(n+9))+rampa(-n+20).*(escalon(n-10)-escalon(n-21));
%x=rampa(-n-10).*(escalon(n+20)-escalon(n+10))-rampa(n+10).*(escalon(n+10)-escalon(n-1))-rampa(-n+10).*(escalon(n-1)-escalon(n-11))+rampa(n-10).*(escalon(n-10)-escalon(n-21));
subplot(1,2,1)
y=submuestreo(x,n,3);
stem(n,x)
title('Señal X[n]')
xlabel('n')
ylabel('X[n]')
grid on
subplot(1,2,2)
stem(n,y)
title('Señal Y[n]=X[n*a]')
xlabel('n')
ylabel('Y[n]')
grid on

