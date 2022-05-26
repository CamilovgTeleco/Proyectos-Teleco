fo=100e3;
A=1;
d=0.125;
R=50;
n=-10:10;
coeficientes=A*d*sinc(n*d);
potencia=(((coeficientes).^2)/100);

%Dado que el ciclo util es de 0.125, en el vector dbm, se ignoran los
%valores en las posiciones 19 y 3
dbm=10*log10(potencia/1e-3);

%Punto 2 c
dbm6=dbm-6;

stem(n,coeficientes)
title('Espectro en frecuencia')
xlabel('n*fo')
ylabel('Amplitud')
grid on
axis([-11 11 -0.05 0.14])
