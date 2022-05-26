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
    list2(1)=list(1);
    for i=2:100
        list2(i)=list(i)-list(i-1);
    end
    vector=list2;
end