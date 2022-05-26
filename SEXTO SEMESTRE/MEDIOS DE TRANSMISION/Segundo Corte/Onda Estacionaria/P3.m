clear;clc;clf

Zo=75;
L=50;
Zl=75;
E_r=2.5;
f=20e6;
A=5;
z=-L:L/10000:0;
Lambda=3e8/(sqrt(E_r)*f);
Ro_l=(Zl-Zo)/(Zl+Zo);
B=A*Ro_l;
Betta=(2*pi)/Lambda;
tetta=pi;

V_z=A.*sqrt(1+(2*abs(Ro_l)).*cos(2*Betta.*z+tetta)+abs(Ro_l)^2);
I_z=(A/Zo).*sqrt(1-(2*abs(Ro_l)).*cos(2*Betta.*z+tetta)+abs(Ro_l)^2);

subplot(1,2,1)
plot(z,V_z)
grid on
xlabel('z')
ylabel('|V(z)|')
title('Onda estacionaria de voltaje')
subplot(1,2,2)
plot(z,I_z,'r')
grid on
xlabel('z')
ylabel('|I(z)|')
title('Onda estacionaria de corriente')

%Al ser la carga igual a la impedancia característica de la línea se tiene
%una línea acoplada, lo cual significa que no habrá onda reflejada, y por ende no se tendrá onda estacionaria. Esto
%también se puede comprobar por medio de la ecuación del coeficiente de
%reflexión. Al ser iguales Zo y ZL el coeficiente de reflexión es igual a
%0, lo cual corrobora que no hay onda reflejada. Con el coeficiente de reflexión siendo = 0 en la ecuación de magnitud de voltaje y
%magnitud de corriente, varios términos se cancelan por lo que la magnitud
%de voltaje será igual a la amplitud de la señal (A) y la magnitud de
%corriente será igual a A/Zo
