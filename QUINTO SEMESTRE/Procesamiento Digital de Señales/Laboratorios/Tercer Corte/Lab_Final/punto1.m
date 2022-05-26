clear
clc
%Justicación de las especificaciones de diseño%
%%Se estableció la frecuencia de paso en 40Hz para que la atenuación se
%%haga en una frecuencia mayor a la frecuencia de la información. Se
%%estableció la frecuencia en 180Hz para que la atenuación se garantice
%%antes de las frecuencias en las cuales estan las principales componentes
%%frecuenciales del ruido

frecuencia_paso=40/1000; 

frecuencia_rechazo=180/1000;

fs=1*10^3;
ts=1/fs;
%Hay que utilizar frecuencias normalizadas para el diseño de los filtros
wp=frecuencia_paso*2;
ws=frecuencia_rechazo*2;
delta1=2;
delta2=60;

[n,wc]=buttord(wp,ws,delta1,delta2);
disp(['El orden del filtro es ',num2str(n)])
disp(['La frecuencia de corte del filtro es ',num2str(wc),' radianes/muestra'])
[num,dem]=butter(n,wc,'Low');
freqz(num,dem)
tf(num,dem,ts)





