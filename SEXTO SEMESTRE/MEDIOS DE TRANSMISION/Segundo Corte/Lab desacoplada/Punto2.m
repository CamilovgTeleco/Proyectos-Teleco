clear;clc;clf
Zo=75;
Zl=60+30*1i;
longitud=32; %se trabajó con otra longitud de la linea ya que debido a que la 
             %longitud de onda es de 10m, el voltaje pico para las señales instantáneas
             %de voltaje en z=0 y z=-l iba a ser el mismo, por lo que las
             %gráficas se superpondrían.
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
t=0:1/(100*f):4/f;
posicion1=find(z==0);
V_zt1=real(V_z(posicion1).*exp((1i*2*pi*f).*t));
posicion2=find(z==(-longitud/2));
V_zt2=real(V_z(posicion2).*exp((1i*2*pi*f).*t));
posicion3=find(z==(-longitud));
V_zt3=real(V_z(posicion3).*exp((1i*2*pi*f).*t));

subplot(1,2,1)
plot(z,abs(V_z))
grid on
hold on
Vrequeridos=[V_z(find(z==0)) V_z(find(z==(-longitud/2))) V_z(find(z==(-longitud)))];
plot(z(find(z==0)),abs(Vrequeridos(1)),'gx')
hold on
plot(z(find(z==(-longitud/2))),abs(Vrequeridos(2)),'rx')
hold on
plot(z(find(z==-longitud)),abs(Vrequeridos(3)),'bx')
axis([-36 1 2.8 5.5])
legend('|V(z)|','|V(z=0)|','|V(z=-l/2)|','|V(z=-l)|')
title('Magnitud de voltaje')
xlabel('z')
ylabel('|V(z)|')

subplot(1,2,2)
plot(t,V_zt1)
title('Señales de voltaje instantáneo')
xlabel('t')
ylabel('v(z,t)')
grid on
hold on
plot(t,V_zt2)
hold on
plot(t,V_zt3)
legend('v(0,t)','v(l/2,t)','v(l,t)')

%En la grafica de magnitud de voltaje se muestran los valores de voltaje
%para cada uno de los puntos indicados. En las señales instantáneas de
%voltaje se evidencia que los valores indicados por la grafica de magnitud
%de volataje, son los valores maximos o valores pico que tendrá la señal
%instantanea en ese punto. 

