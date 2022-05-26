trama=CodHamming;

subplot(1,3,1)
trama1=NRZL(trama);
plot(trama1(2,:),trama1(1,:))
title('NRZ-L',trama)
grid on

subplot(1,3,2)
trama1=PseudoTernario(trama);
plot(trama1(2,:),trama1(1,:))
title('Pseudo Ternario',trama)
grid on

subplot(1,3,3)
trama1=MLT3(trama);
plot(trama1(2,:),trama1(1,:))
title('MLT3',trama)
grid on
