% function value=ZEROnONE
    clear;clc
    matriz=zeros(10,10);
    binary_values=0;
    binary_values2=0;
    iterador=0;
    list=zeros(1,100);
    validate=0;
    %list in which one hundred values are stored
    while validate==0
       binary_values=randi([0,1],1);
       binary_values2=randi([4,10],1);
       for j=(iterador+1):(binary_values2+iterador)
           if j<=100
            list(j)=1*binary_values;
           elseif j>100
               validate=1;
           end
       end
       iterador=binary_values2+iterador;
    end
    
    %the user selects the reading method
    iterador=1;
    for i=1:10
       for j=1:10
           matriz(i,j)=list(iterador);
           iterador=iterador+1;
       end
    end
% end