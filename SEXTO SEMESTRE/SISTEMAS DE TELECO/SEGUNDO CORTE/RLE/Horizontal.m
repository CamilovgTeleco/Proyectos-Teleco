function vector = Horizontal(matriz)
    list=zeros(1,100);
    iterador=1;
    for i=1:10
       for j=1:10
           list(iterador)=matriz(i,j);
           iterador=iterador+1;
       end
    end
    list2=[];
    iterador=1;
    for i=1:100
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