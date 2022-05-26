clear;clc;clf

Zo=75;
L=50;
Zl=1000000000000000; %Se utiliza un valor alto para simular que la impedancia es infinita
E_r=2.5;
f=20e6;
A=5;
z=-L:L/10000:0;
Lambda=3e8/(sqrt(E_r)*f);
Ro_l=(Zl-Zo)/(Zl+Zo);
B=A*Ro_l;
Betta=(2*pi)/Lambda;
tetta=0;

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

VoltajeEnLaCarga=V_z(length(V_z))
CorrienteEnLaCarga=I_z(length(I_z))
VSWR=(1+abs(Ro_l))/(1-abs(Ro_l))

%Las diferencias de estas gráficas con las gráficas en las que la
%impedancia no es un circuito abierto son muy similares a las diferencias
%expuestas en el punto anterior. La forma de la onda es similar a las
%gráficas cuando la impedancia es puramente reactiva y la forma de la onda
%difiere de las gráficas donde Zl es resistiva o compleja. En este caso
%cuando z=0 se tiene un voltaje máximo y una corriente mínima en la carga.
%Esto tiene sentido ya que cuando se tiene un circuito abierto la corriente
%es 0 porque esta no tiene por donde circular. El voltaje máximo se debe a
%que cuando se tiene un voltaje máximo, se tendrá una corriente mínima.

