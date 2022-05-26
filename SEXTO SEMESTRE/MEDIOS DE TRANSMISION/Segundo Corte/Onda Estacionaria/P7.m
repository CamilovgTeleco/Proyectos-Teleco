clear;

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

VSWR=(1+abs(Ro_l)*exp(1i*tetta).*exp(2*1i*Betta.*z))./(1-abs(Ro_l)*exp(1i*tetta).*exp(2*1i*Betta.*z));

plot(VSWR)
grid on
title('VSWR')



