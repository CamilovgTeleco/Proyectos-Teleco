Vg=[3.3 5 15];
Zg=[50 100 175 ];
clc;

for j=1:3
    for i=1:3
       disp(" ")
       a="Para Vg = "+Vg(j)+" y Zg = "+num2str(Zg(i));
       disp(a)
       [Vi,VL,Ii,IL,Pi,PL]=Matriz(75,30-20j,20e6,30,2.5,Vg(j),Zg(i),0);
       P1="Pi = "+num2str(Pi);
       disp(P1)
       P2="PL = "+num2str(PL);
       disp(P2)
    end
end


%Fijando el voltaje y variando la impedancia se evidencia que la potencia
%tanto en la entrada como en la carga disminuye. Esto se debe a que a
%medida que Zg aumenta, la mayor parte del voltaje recaerá en Zg. Cabe
%recalcar que la potencia de entrada y de salida son las mismas, esto se
%debe a que la línea que se trabaja no tiene pérdidas.

%La máxima transferencia de potencia se presenta cuando Zo=Zl. Para
%comprobar esto se fijará un valor de y se presentarán 5 casos. El primero
%será que todas las impedancias son diferentes. Del caso 2 al 4 dos
%impedancias serán iguales y en el último caso todas serán iguales

disp("--------------------------")
disp("Primer Caso: Todas las impedancias son diferentes")
[Vi,VL,Ii,IL,Pi,PL]=Matriz(75,30-20j,20e6,30,2.5,5,25,0);
P1="Pi = "+num2str(Pi);
disp(P1)
P2="PL = "+num2str(PL);
disp(P2)
disp(" ")
disp("Segundo Caso: 2 de impedancias son iguales")
disp("    Zo=Zg")
[Vi,VL,Ii,IL,Pi,PL]=Matriz(75,30-20j,20e6,30,2.5,5,75,0);
P1="Pi = "+num2str(Pi);
disp(P1)
P2="PL = "+num2str(PL);
disp(P2)
disp("    Zo=ZL")
[Vi,VL,Ii,IL,Pi,PL]=Matriz(75,75,20e6,30,2.5,5,25,0);
P1="Pi = "+num2str(Pi);
disp(P1)
P2="PL = "+num2str(PL);
disp(P2)
disp("    ZL=Zg")
[Vi,VL,Ii,IL,Pi,PL]=Matriz(75,30,20e6,30,2.5,5,30,0);
P1="Pi = "+num2str(Pi);
disp(P1)
P2="PL = "+num2str(PL);
disp(P2)
disp("Tercer Caso: Todas las impedancias son iguales")
disp("  Zo=Zg=ZL")
[Vi,VL,Ii,IL,Pi,PL]=Matriz(75,75,20e6,30,2.5,5,75,0);
P1="Pi = "+num2str(Pi);
disp(P1)
P2="PL = "+num2str(PL);
disp(P2)





