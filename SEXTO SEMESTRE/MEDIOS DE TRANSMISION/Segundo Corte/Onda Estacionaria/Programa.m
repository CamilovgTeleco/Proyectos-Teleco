clear;clc;clf
Zo=75;
L=50;
Zl=30-20*1i;
E_r=2.5;
f=10e6;
A=5;
z=-L:L/1000:0;
Lambda=3e8/(sqrt(E_r)*f);
Ro_l=(Zl-Zo)/(Zl+Zo);
Betta=(2*pi)/Lambda;
tetta=0;
V_z=A.*sqrt(1+(2*abs(Ro_l)).*cos(2*Betta.*z+tetta)+abs(Ro_l)^2);
I_z=(A/Zo).*sqrt(1-(2*abs(Ro_l)).*cos(2*Betta.*z+tetta)+abs(Ro_l)^2);

subplot(1,2,1)
plot(z,V_z)
title("Gráfica onda estacionaria de voltaje")
xlabel('z')
ylabel('|V(z)|')
grid on
subplot(1,2,2)
plot(z,I_z,'r')
grid on
title("Gráfica onda estacionaria de corriente")
xlabel('z')
ylabel('|I(z)|')

VSWR=(1+abs(Ro_l))/(1-abs(Ro_l));

[VM,PosicionMax]=findpeaks(V_z);
[Vm,PosicionMin]=findpeaks(I_z);

Vmax=V_z(PosicionMax);
Vmin=V_z(PosicionMin);
Imax=I_z(PosicionMin);
Imin=I_z(PosicionMax);

for i=1:length(PosicionMax)
    Z_Vmax_Imin(i)=Vmax(i)/Imin(i); %Se calcula la impedancia en los puntos donde el voltaje es máximo y la corriente mínima
    Z_Vmax_IminPosicion(i)=z(PosicionMax(i)); %Puntos z de las impedancias

    Z_Vmin_Imax(i)=Vmin(i)/Imax(i); %Se calcula la impedancia en los puntos donde el voltaje es mínimo y la corriente máxima.
    Z_Vmin_ImaxPosicion(i)=z(PosicionMin(i)); %Puntos z de las impedancias
end
Z_Vmax_Imin(2,:)=Z_Vmax_IminPosicion(:); %se añade a la matriz de impedancias las posiciones donde estas ocurren
Z_Vmin_Imax(2,:)=Z_Vmin_ImaxPosicion(:);











