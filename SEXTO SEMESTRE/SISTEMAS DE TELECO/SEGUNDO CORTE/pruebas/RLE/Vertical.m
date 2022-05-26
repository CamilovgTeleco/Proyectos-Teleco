function vector = Vertical(matriz)
    list=zeros(1,64);
    iterador=1;
    for i=1:8
       for j=1:8
           list(iterador)=matriz(j,i);
           iterador=iterador+1;
       end
    end
    list2=[];
    iterador=1;
    %from here it's calculated the groups
    for i=1:64
        if i==1
           list2(iterador)=list(i);
           list2(iterador+1)=1;
        else
            if list(i)==list2(iterador)
                list2(iterador+1)=list2(iterador+1)+1;
            else
                iterador=iterador+2;
                list2(iterador)=list(i);
                list2(iterador+1)=1;
            end
        end
    end
    vector=list2;
end