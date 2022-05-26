clear;clc;clf
Zo=75;
Zl=60+30*1i;
longitud=32; 
E_r=1;
f=30e6;
A=4;
Alpha=0;
Betta=(2*pi)/(3e8/(sqrt(E_r)*f));
gamma=Alpha+1i*Betta;
Ro_l=(Zl-Zo)/(Zl+Zo);
B=Ro_l*A;
z=-longitud:longitud/500:0;

V_z=A.*exp(-gamma.*z)+B.*exp(gamma.*z);
I_z=(A.*exp(-gamma.*z)-B.*exp(gamma.*z))./Zo;

for i=1:length(z)
   Z(i)=V_z(i)/I_z(i); 
end
plot(z,Z)
grid on
title('Z(z)=V(z)/I(z)')
ylabel('Z(z)')
