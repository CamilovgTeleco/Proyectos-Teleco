
To=10;
n=-50:50;
t=-To/2:To/100:To/2;
A=1;
d1=0.5;
d2=0.25;
d3=0.125;
R=50;
%              SEÑAL CON CICLO ÚTIL DE 0.5               %

%Calculo de los componentes frecuenciales y gráfico del espectro en frecuencia
Componentes_fd1= (A*d1)*sinc(n.*d1);
subplot(3,3,1)
stem(n,Componentes_fd1)
title ('Espectro en frecuencia, d=0.5')
ylabel('Cn')
xlabel('n*fo')
grid on
%Reconstrucción temporal y gráfico
Reconstruccion_d1=0;
m=1;
for k=-50:50
    Reconstruccion_d1= Reconstruccion_d1 + Componentes_fd1(m).*exp(((j*2*pi*k.*t)./To));
    m=m+1;

end
subplot(3,3,2)
plot(t,Reconstruccion_d1)
title ('Reconstruccion temporal, d=0.5')
ylabel('X(t)')
xlabel('t')
grid on
%Espectro en potencia
Prms_d1=((Componentes_fd1).^2)/(2*R);
subplot(3,3,3)
stem(n,Prms_d1)
title ('Espectro en potencia, d=0.5')
ylabel('Prms')
xlabel('n*fo')
grid on

 %%%%%%%%%%%SEÑAL CON CICLO ÚTIL DE 0.25%%%%%%%%%%%%%

%Calculo de los componentes frecuenciales y gráfico del espectro en frecuencia
Componentes_fd2= (A*d2)*sinc(n.*d2);
subplot(3,3,4)
ylabel('Cn')
xlabel('n')
stem(n,Componentes_fd2)
title ('Espectro en frecuencia, d=0.25')
ylabel('Cn')
xlabel('n*fo')
grid on
%Reconstrucción temporal y gráfico
Reconstruccion_d2=0;
m=1;
for k=-50:50
    Reconstruccion_d2= Reconstruccion_d2 + Componentes_fd2(m).*exp(((j*2*pi*k.*t)./To));
    m=m+1;
end
subplot(3,3,5)
plot(t,Reconstruccion_d2)
title ('Reconstruccion temporal, d=0.25')
ylabel('X(t)')
xlabel('t')
grid on
%Espectro en potencia
Prms_d2=((Componentes_fd2).^2)/(2*R);
subplot(3,3,6)
stem(n,Prms_d2)
title ('Espectro en potencia, d=0.25')
ylabel('Prms')
xlabel('n*fo')
grid on

 %%%%%%%%%%%%%%%%SEÑAL CON CICLO ÚTIL DE 0.125%%%%%%%%%%%%%%%%

%Calculo de los componentes frecuenciales y gráfico del espectro en frecuencia
Componentes_fd3= (A*d3)*sinc(n.*d3);
subplot(3,3,7)
stem(n,Componentes_fd3)
title ('Espectro en frecuencia, d=0.125')
ylabel('Cn')
xlabel('n*fo')
grid on
%Reconstrucción temporal y gráfico
Reconstruccion_d3=0;
 m=1;
for k=-50:50
    Reconstruccion_d3= Reconstruccion_d3 + Componentes_fd3(m).*exp(((j*2*pi*k.*t)./To));
    m=m+1;
end
subplot(3,3,8)
plot(t,Reconstruccion_d3)
title ('Reconstruccion temporal, d=0.125')
ylabel('X(t)')
xlabel('t')
grid on
%Espectro en potencia
Prms_d3=((Componentes_fd3).^2)/(2*R);
subplot(3,3,9)
stem(n,Prms_d3)
title ('Espectro en potencia, d=0.125')
ylabel('Prms')
xlabel('n*fo')
grid on
    
    
    
    
    

    