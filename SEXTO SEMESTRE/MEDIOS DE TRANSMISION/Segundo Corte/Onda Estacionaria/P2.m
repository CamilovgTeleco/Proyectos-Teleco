clear;clc;clf

Zo=75;
L=50;
Zl=30-20*1i;
E_r=2.5;
f=20e6;
A=5;
T=1/f;
t=0:T/100:10*T;
w=2*pi*f;
z=-L:L/10000:0;
Lambda=3e8/(sqrt(E_r)*f);
Ro_l=(Zl-Zo)/(Zl+Zo);
B=A*Ro_l;
Betta=(2*pi)/Lambda;
tetta=deg2rad(-144);

V_z=A.*sqrt(1+(2*abs(Ro_l)).*cos(2*Betta.*z+tetta)+abs(Ro_l)^2);
I_z=(A/Zo).*sqrt(1-(2*abs(Ro_l)).*cos(2*Betta.*z+tetta)+abs(Ro_l)^2);

I_z2=-1.*I_z;

%Encontrando los valores máximos de voltaje y mínimos de corriente 
[V,PosicionVMAX]=findpeaks(V_z); 
[v,PosicionImin]=findpeaks(I_z2);

PosicionVMAX=fliplr(PosicionVMAX);
PosicionImin=fliplr(PosicionImin);

Max=z(PosicionVMAX([1 5 9]));
Min=z(PosicionImin([2 4 10]));

Vz=A.*exp(-1i*Betta*z)+B.*exp(1i*Betta*z);
Iz=(A.*exp(-1i*Betta*z)-B.*exp(1i*Betta*z))./Zo;

subplot(2,2,1)
v_z_t=real(V_z(PosicionVMAX(1)).*exp(1i*w.*t));
plot(t,v_z_t)
hold on 
v_z_t=real(V_z(PosicionVMAX(5)).*exp(1i*w.*t));
plot(t,v_z_t,'r')
hold on 
v_z_t=real(V_z(PosicionVMAX(9)).*exp(1i*w.*t));
plot(t,v_z_t,'g')
grid on 
xlabel('t')
ylabel('v(z,t)')
legend('v(-4.75,t)','v(-23.72,t)','v(-42.69,t)')
title('Voltaje instantáneo','en los puntos correspondientes a los máximos de voltaje 1 5 y 9')

subplot(2,2,2)
v_z_t=real(V_z(PosicionImin(2)).*exp(1i*w.*t));
plot(t,v_z_t)
hold on 
v_z_t=real(V_z(PosicionImin(4)).*exp(1i*w.*t));
plot(t,v_z_t,'y')
hold on 
v_z_t=real(V_z(PosicionImin(10)).*exp(1i*w.*t));
plot(t,v_z_t,'c')
grid on 
xlabel('t')
ylabel('v(z,t)')
legend('v(-9.49,t)','v(-18.98,t)','v(-47.25,t)')
title('Voltaje instantáneo','en los puntos correspondientes a los mínimos de corriente 2 4 y 10')

subplot(2,2,3)
i_z_t=real(I_z(PosicionVMAX(1)).*exp(1i*w.*t));
plot(t,i_z_t)
hold on 
i_z_t=real(I_z(PosicionVMAX(5)).*exp(1i*w.*t));
plot(t,i_z_t,'r')
hold on 
i_z_t=real(I_z(PosicionVMAX(9)).*exp(1i*w.*t));
plot(t,i_z_t,'g')
grid on 
xlabel('t')
ylabel('i(z,t)')
legend('i(-4.75,t)','i(-23.72,t)','i(-42.69,t)')
title('Corriente instantánea','en los puntos correspondientes a los máximos de voltaje 1 5 y 9')

subplot(2,2,4)
i_z_t=real(I_z(PosicionImin(2)).*exp(1i*w.*t));
plot(t,i_z_t)
hold on 
i_z_t=real(I_z(PosicionImin(4)).*exp(1i*w.*t));
plot(t,i_z_t,'y')
hold on 
i_z_t=real(I_z(PosicionImin(10)).*exp(1i*w.*t));
plot(t,i_z_t,'c')
grid on 
xlabel('t')
ylabel('i(z,t)')
legend('i(-9.49,t)','i(-18.98,t)','i(-47.25,t)')
title('Corriente instantánea','en los puntos correspondientes a los mínimos de corriente 2 4 y 10')

%PARA LAURA
%Primero que nada tenga usted buen día señora, segundo en el informe, para
%este punto haga lo siguiente
%Ejecute el script de Procedimientos y solo deje descomentada la linea
%donde vea que está el 30-20j. Cuando ejecute eso, tome una foto donde
%evidencie el valor de voltaje máximo y el valor de corriente mínima.
%Luego tome una foto de la ejecución de este script mostrando el voltaje
%máximo y corriente máxima de las señales.
%Cuando haga eso, borre  esta nota. Muchas gracias y hasta luego señora

%EXPLICACIÓN
%Las relación entre la magnitud de la onda estacionaria con la
%onda estacionaria instantánea es que el valor de magnitud de la onda estacionaria en
%cierto punto z será el valor máximo que tomará la onda estacionaria
%instantánea en ese mismo punto z. Con estas gráficas también se comprueba
%que los máximos de voltaje o mínimos de corriente se repiten cada λ/2, es
%por esto que las señales se ven superpuestas, porque en los puntos donde
%se grafica es como si las señales tuvieran desfases de 2 pi.
%Además se corrobora que cuando hay un máximo de voltaje, se
%presenta un mínimo de corriente.
















