function vector = Vertical(matriz)
    list=zeros(1,100);
    iterador=1;
    for i=1:10
       for j=1:10
           list(iterador)=matriz(j,i);
           iterador=iterador+1;
       end
    end
    list2=[];
    list2(1)=list(1);
    %from here it's calculated the groups
    for i=2:100
        list2(i)=list(i)-list(i-1);
    end
    vector=list2;
end