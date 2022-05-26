clear;clc;clf
Zo=75;
Zl=60+5*1i;
longitud=35; 
E_r=1;
f=30e6;
A=4;
Alpha=0.1;
Betta=(2*pi)/(3e8/(sqrt(E_r)*f));
gamma=Alpha+1i*Betta;
Ro_l=(Zl-Zo)/(Zl+Zo);
B=Ro_l*A;
z=-longitud:longitud/1000:0;

V_z=A.*exp(-gamma.*z)+B.*exp(gamma.*z);
I_z=(A.*exp(-gamma.*z)-B.*exp(gamma.*z))./Zo;

for i=1:length(z)
   Z(i)=V_z(i)/I_z(i); 
end
plot(z,Z)
grid on
title('Z(z)=V(z)/I(z)')
ylabel('Z(z)')
xlabel('z')


%PARA EL PUNTO 5 AL 8
%Las gráficas para alpha diferente de 0 difieren mucho de las graficas
%realizadas para alpha igual a 0. En las gráficas de voltaje y corriente
%instantánea se evidencia como a medida que se avanza hacia la carga, estas
%señales se van atenuando. Para el caso de las magnitudes tanto de
%corriente como de voltaje, vemos que la magnitud de cada una de estas va
%disminuyendo a medida que se avanza hacia la carga. Las magnitudes de
%voltaje y de corriente, al igual que en el caso para alpha = 0, se siguen
%comportando como los valores máximos de las señales instantáneas. 


%Esto claramente se debe a que alpha es diferente de 0, ya que el hecho de
%que no valga 0 significa que en la línea hay pérdidas.
%Algo peculiar respecto a la impedancia es la forma en que varía, ya que vemos
%que para cierto intervalo, Z es muy parecida a Zo pero a medida que nos
%acercamos a la carga, la impedancia empieza a variar. 





