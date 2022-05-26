function vector = ZigZag(matriz)
        condicion = 0;
        i=1;
        j=1;
        iterador=2;
        lista(1)=matriz(i,j);
        while condicion == 0
            if j<9
                j=j+1;
                lista(iterador)=matriz(i,j);
                iterador=iterador+1;
                while j ~=1
                   i=i+1;
                   j=j-1;
                   lista(iterador)=matriz(i,j);
                   iterador=iterador+1;
                end
                i=i+1;
                lista(iterador)=matriz(i,j);
                iterador=iterador+1;
                while i ~= 1
                   j=j+1;
                   i=i-1;
                   lista(iterador)=matriz(i,j);
                   iterador=iterador+1;
                end
            elseif j==9 || j==10
                if j==9
                    j=j+1;
                    lista(iterador)=matriz(i,j);
                    iterador=iterador+1;
                end
                while i<10
                   i=i+1;
                   j=j-1;
                   lista(iterador)=matriz(i,j);
                   iterador=iterador+1;
                end
                j=j+1;
                lista(iterador)=matriz(i,j);
                iterador=iterador+1;
                while j<10
                    j=j+1;
                    i=i-1;
                    lista(iterador)=matriz(i,j);
                    iterador=iterador+1;
                end
                if i<10
                    i=i+1;
                    lista(iterador)=matriz(i,j);
                    iterador=iterador+1;
                end
            end
            if i==10 && j==10
                condicion=1;
            end
        end
        list2=[];
        list2(1)=lista(1);
        %from here it's calculated the groups
        for i=2:100
            list2(i)=lista(i)-lista(i-1);
        end
        vector=list2;
end