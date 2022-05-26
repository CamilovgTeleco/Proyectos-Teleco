function vector = RandomValues(numInf,numSup)
    values=0;%I have to copy from here
    values2=0;
    iterador=0;
    list=zeros(1,100);
    validate=0;
    %list in which one hundred values are stored
    while validate==0
       values=randi([numInf,numSup],1);
       values2=randi([4,10],1);
       for j=(iterador+1):(values2+iterador)
           if j<=100
            list(j)=values;
           elseif j>100
            validate=1;
           end
       end
       iterador=values2+iterador;
    end%I have to copy until here
    vector=list;
end