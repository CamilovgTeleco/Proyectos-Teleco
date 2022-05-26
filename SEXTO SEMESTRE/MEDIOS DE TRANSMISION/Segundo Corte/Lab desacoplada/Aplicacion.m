clear;clc;clf
Zo=75;
Zl=60+30*1i;
longitud=35;
E_r=1;
f=30e6;
A=4;
Alpha=0;
Betta=(2*pi)/(3e8/(sqrt(E_r)*f));
gamma=Alpha+1i*Betta;
Ro_l=(Zl-Zo)/(Zl+Zo);
B=Ro_l*A;
z=-longitud:longitud/500:0;

for i=1:length(z)
    arg=exp((2*gamma).*z(i));
    Z(i)=Zo.*((1+Ro_l.*arg)/(1-Ro_l.*arg));
    Z_polar(i)=abs(Z(i));
    Z_angulo(i)=rad2deg(angle(Z(i)));
end

V_z=A.*exp(-gamma.*z)+B.*exp(gamma.*z);
I_z=(A.*exp(-gamma.*z)-B.*exp(gamma.*z))/Zo;

% posicion=randi([1,length(z)]);
posicion=find(z==(-longitud/2));
t=0:1/(100*f):4/f;
V_zt=real(V_z(posicion).*exp((1i*2*pi*f).*t));
I_zt=real(I_z(posicion).*exp((1i*2*pi*f).*t));
zCaracter=num2str(z(posicion));

subplot(2,3,1)
plot(z,Z)
grid on
title('Impedancia a lo largo de la línea')
xlabel('z')
ylabel('Z(z)')
subplot(2,3,2)
plot(z,abs(V_z))
grid on
title('Magnitud de voltaje a lo largo de la línea')
xlabel('z')
ylabel('|V(z)|')
subplot(2,3,3)
plot(z,abs(I_z))
title('Magnitud de corriente a lo largo de la línea')
xlabel('z')
ylabel('|I(z)|')
grid on
subplot(2,3,4)
plot(t,V_zt)
title('Voltaje instantáneo en z=',zCaracter)
xlabel('t')
ylabel('v(z,t)')
grid on
subplot(2,3,5)
plot(t,V_zt)
title('Corriente instantánea en z=',zCaracter)
xlabel('t')
ylabel('i(z,t)')
grid on







