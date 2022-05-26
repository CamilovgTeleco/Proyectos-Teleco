clear;clc;clf
Zo=75;
L=50;
Zl=30-20j;
E_r=2.5;
f=10e6;
A=5;
z=-L:L/10000:0;
Lambda=3e8/(sqrt(E_r)*f);
Ro_l=(Zl-Zo)/(Zl+Zo);
B=A*Ro_l;
Betta=(2*pi)/Lambda;
tetta=deg2rad(-144);

V_z=A.*sqrt(1+(2*abs(Ro_l)).*cos(2*Betta.*z+tetta)+abs(Ro_l)^2);
I_z=(A/Zo).*sqrt(1-(2*abs(Ro_l)).*cos(2*Betta.*z+tetta)+abs(Ro_l)^2);

[V,posicionesVMax]=findpeaks(V_z);
[v,posicionesVmin]=findpeaks(-V_z);
[I,posicionesIMax]=findpeaks(I_z);
[i,posicionesImin]=findpeaks(-I_z);

for j=1:length(V_z)
   Z(1,j)=V_z(j)./I_z(j);
end

plot(z,Z)
grid on
xlabel('z')
ylabel('Z(z)')
title('Impendancia a lo largo de la línea')
posicionesVMax=fliplr(posicionesVMax);
posicionesVmin=fliplr(posicionesVmin);
posicionesIMax=fliplr(posicionesIMax);
posicionesImin=fliplr(posicionesImin);

disp('impedancia en los puntos z donde ocurren los máximos de voltaje')
for j=1:length(posicionesVMax)
    a="Z("+num2str(z(posicionesVMax(j)))+")="+num2str(Z(1,posicionesVMax(j)));
    disp(a)
end
disp('impedancia en los puntos z donde ocurren los mínimos de voltaje')
for j=1:length(posicionesVMax)
    a="Z("+num2str(z(posicionesVmin(j)))+")="+num2str(Z(1,posicionesVmin(j)));
    disp(a)
end
disp('impedancia en los puntos z donde ocurren los máximos de corriente')
for j=1:length(posicionesVMax)
    a="Z("+num2str(z(posicionesIMax(j)))+")="+num2str(Z(1,posicionesIMax(j)));
    disp(a)
end
disp('impedancia en los puntos z donde ocurren los mínimos de corriente')
for j=1:length(posicionesVMax)
    a="Z("+num2str(z(posicionesImin(j)))+")="+num2str(Z(1,posicionesImin(j)));
    disp(a)
end

VSWR=(1+abs(Ro_l))./(1-abs(Ro_l));
Zmax=Zo*VSWR
Zmin=Zo/VSWR

%La relación que tiene la impedancia característica con la gráfica de
%impedancia es que los valores máximos y mínimos de la impedancia pueden ser encontrados a
%partir de la impedancia característica y el VSWR



