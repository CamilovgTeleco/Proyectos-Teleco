clear;clc;clf

Zo=75;
L=50;
Zl=0;
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

VoltajeEnLaCarga=V_z(length(V_z))
CorrienteEnLaCarga=I_z(length(I_z))
VSWR=(1+abs(Ro_l))/(1-abs(Ro_l))

%Cuando se grafica la magnitud de la onda estacionaria cuando la línea
%termina en corto podemos apreciar ciertas diferencias. La primera diferencia, y
%la más evidente, es que la forma de la onda estacionaria es diferente respecto a la 
%gráfica de magnitud de voltaje cuando la carga era resistiva o compleja (esto tiene sentido ya que
%en estos dos primeros casos, a lo largo de la línea se tienen impedancias complejas, pero con Zl sólo se tiene 
%impedancias reactivas).
%En los casos donde Zl era puramente reactiva, vemos que las gráficas se
%parecen bastante, ya que en ambos casos a lo largo de la línea se manejan
%impedancias reactivas. 
%Otra diferencia que podemos encontrar respecto a las otras gráficas es que
%el voltaje en la carga es de 0. Esto es lógico debido a que no hay una
%diferencia de potencial. Al tener un voltaje mínimo en la carga, se tendrá
%una corriente máxima en este punto, esto debido a que cuando se tiene un
%mínimo de voltaje se tiene un máximo de corriente.

