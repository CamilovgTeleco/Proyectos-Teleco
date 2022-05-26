function P1(Zo,L,Zl,E_r,f,A,tetta)
z=-L:L/10000:0;
Lambda=3e8/(sqrt(E_r)*f);
Ro_l=(Zl-Zo)/(Zl+Zo);
Betta=(2*pi)/Lambda;
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

[VM,PosicionMax]=findpeaks(V_z); 
[Vm,PosicionMin]=findpeaks(I_z);
Max=[1 5 9];
Min=[2 4 10];
PosicionMax=fliplr(PosicionMax);
PosicionMin=fliplr(PosicionMin);

Posiciones159=z(PosicionMin(Max)) %Posicion de los valores máximos de corriente 1 5 y 9
Posiciones2410=z(PosicionMax(Min))%Posicion de los valores mínimos de corriente 2 4 y 10

SeparacionMaxVolt12=abs(z(PosicionMax(2)))-abs(z(PosicionMax(1)))  %Distancia entre el primer máximo de voltaje y el segundo.

%Distancia entre dos voltajes máximos consecutivos.
SeparacionMaxVolConsec(1)=abs(z(PosicionMax(6)))-abs(z(PosicionMax(5)));
SeparacionMaxVolConsec(2)=abs(z(PosicionMax(5)))-abs(z(PosicionMax(4)));
SeparacionMaxVolConsec(3)=abs(z(PosicionMax(4)))-abs(z(PosicionMax(3)));
SeparacionMaxVolConsec(4)=abs(z(PosicionMax(3)))-abs(z(PosicionMax(2))); 
SeparacionMaxVolConsec(5)=abs(z(PosicionMax(2)))-abs(z(PosicionMax(1)));
SeparacionDeVoltajesMaximosConsecutivos=sum(SeparacionMaxVolConsec)/length(SeparacionMaxVolConsec);%se promedia las distancias entre máximos de voltajes

SeparacionminVol12=abs(z(PosicionMin(2)))-abs(z(PosicionMin(1))) %Distancia entre el voltaje mínimo 1 y 2

%Distancia entre dos voltajes minimos consecutivos.
SeparacionminVolConsec(1)=abs(z(PosicionMin(6)))-abs(z(PosicionMin(5)));
SeparacionminVolConsec(2)=abs(z(PosicionMin(5)))-abs(z(PosicionMin(4)));
SeparacionminVolConsec(3)=abs(z(PosicionMin(4)))-abs(z(PosicionMin(3)));
SeparacionminVolConsec(4)=abs(z(PosicionMin(3)))-abs(z(PosicionMin(2)));
SeparacionminVolConsec(5)=abs(z(PosicionMin(2)))-abs(z(PosicionMin(1)));
SeparacionDeVoltajesMinimosConsecutivos=sum(SeparacionminVolConsec)/length(SeparacionminVolConsec) %Se hace un promedio de las distacias


SeparacionPrimerMaxVol_PrimerMaxCorr=abs(abs(z(PosicionMin(1)))-abs(z(PosicionMax(1)))) %Distancia entre primer máximo de corriente y primer máximo de voltaje
SeparacionMaxVol_MaxCorrConsec=abs(abs(z(PosicionMin(6)))-abs(z(PosicionMax(6)))) %Distancia entre máximo de corriente y máximo de voltaje consecutivos

SeparacionMaxVol_minCorr=abs(abs(z(PosicionMax(6)))-abs(z(PosicionMax(6)))) %Distancia entre un máximo de voltaje y un mínimo de corriente. 
%Cabe aclarar que en PosicionMax está los indices del vector z donde
%ocurren los voltajes máximos, que a su vez son los puntos donde ocurre la
%corriente mínima.
end
                                                                                                