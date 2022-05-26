clear;clc;clf
Zo=75;
Zl=60+30*1i;
longitud=32;
E_r=1;
f=30e6;
A=4;
Alpha=0.1;
Betta=(2*pi)/(3e8/(sqrt(E_r)*f));
gamma=Alpha+1i*Betta;
Ro_l=(Zl-Zo)/(Zl+Zo);
B=Ro_l*A;
z=-longitud:longitud/500:0;

I_z=(A.*exp(-gamma.*z)-B.*exp(gamma.*z))./Zo;
t=0:1/(100*f):4/f;
posicion1=find(z==0);
I_zt1=real(I_z(posicion1).*exp((1i*2*pi*f).*t));
posicion2=find(z==(-longitud/2));
I_zt2=real(I_z(posicion2).*exp((1i*2*pi*f).*t));
posicion3=find(z==(-longitud));
I_zt3=real(I_z(posicion3).*exp((1i*2*pi*f).*t));

subplot(1,2,1)
plot(z,abs(I_z))
grid on
hold on
Irequeridos=[I_z(find(z==0)) I_z(find(z==(-longitud/2))) I_z(find(z==(-longitud)))];
plot(z(find(z==0)),abs(Irequeridos(1)),'gx')
hold on
plot(z(find(z==(-longitud/2))),abs(Irequeridos(2)),'rx')
hold on
plot(z(find(z==-longitud)),abs(Irequeridos(3)),'bx')
legend('|I(z)|','|I(z=0)|','|I(z=-l/2)|','|I(z=-l)|')
title('Magnitud de corriente')
xlabel('z')
ylabel('|I(z)|')
subplot(1,2,2)
plot(t,I_zt1)
title('Señales de corriente instantáneo')
xlabel('t')
ylabel('v(z,t)')
grid on
hold on
plot(t,I_zt2)
hold on
plot(t,I_zt3)
legend('i(0,t)','i(l/2,t)','i(l,t)')