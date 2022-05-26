%Clase 03-02-2020%
subplot(3,3,1)
n=-20:20;
%Primer Punto: Una señal seno es periódica si su frecuencia es un numero
%racional
f=2;
w=2*pi*f;
x=4*cos(w.*n);
stem(n,x)
title('PRIMER PUNTO f=2')
axis([-10 10 -0.5 5])
grid on
subplot(3,3,2)
f=3;
w=2*pi*f;
x=4*cos(w.*n);
stem(n,x)
title('PRIMER PUNTO f=3')
axis([-10 10 -0.5 5])
grid on



