clear;clc;clf
Zo=75;
Zl=60+30*1i;
longitud=100;
E_r=1;
f=30e6;
A=4;
Alpha=0.1;
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


