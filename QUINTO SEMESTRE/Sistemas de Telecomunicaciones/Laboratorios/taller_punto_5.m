n=-20:20;
cero=find(n==0);
coeficientes=[];
for i=1:numel(n)
    if i==cero
        coeficientes(i)=10*0.5*sinc(n(i)*0.5);
        
    elseif mod(i,2)==0
        coeficientes(i)=10*0.5*sinc(n(i)*0.5);
    else
        coeficientes(i)=0;
    end 
end

potencia=(((coeficientes).^2)/100);

dbm=10*log10(potencia/1e-3);

dbm1=dbm-1;
dbm3=dbm-3;

potencia1=10.^(dbm1/10)*10^-3;
potencia3=10.^(dbm3/10)*10^-3;

subplot(1,2,1)
stem(n,potencia1)
title('Potencia con atenuación de 1dB')
xlabel('n*fo')
ylabel('Prms')
grid on
subplot(1,2,2)
stem(n,potencia3)
title('Potencia con atenuación de 3dB')
xlabel('n*fo')
ylabel('Prms')
grid on



