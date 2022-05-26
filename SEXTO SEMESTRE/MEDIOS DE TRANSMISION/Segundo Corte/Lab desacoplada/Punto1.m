clear;clc;clf
Zo=75;
Zl=60+30*1i;
longitud=35;
E_r=1;
f=30e6;
A=4;
Alpha=0;
Betta=(2*pi)/(3e8/(sqrt(E_r)*f));
gamma=Alpha+1i*Betta;
Ro_l=(Zl-Zo)/(Zl+Zo);
B=Ro_l*A;
z=-longitud:longitud/500:0;

for i=1:length(z)
    arg=exp((2*gamma).*z(i));
    Z(i)=Zo.*((1+Ro_l.*arg)/(1-Ro_l.*arg));
end

plot(z,Z)
grid on
%La impedancia para z=0 es la impedancia de la carga, la grafica solo
%muestra la parte real. A medida que se avanza en la gráfica se evidencia
%que la impedancia varia de forma periódica. Por medio de la funcion
%findpeaks se observó que se obtiene un valor máximo de impedancia cada
%λ/2. Con los valores que se manejaron, λ=10. Pero este patron no solo se
%puede comprobar con los valores máximos de la impedancia, si nos fijamos
%el valor de la impedancia de la carga tambíen se repite cada λ/2.

