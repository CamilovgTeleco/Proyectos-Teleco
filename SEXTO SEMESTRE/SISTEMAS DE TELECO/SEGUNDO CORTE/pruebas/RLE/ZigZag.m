function vector = ZigZag(matriz)
        condicion = 0;
        i=1;
        j=1;
        iterador=1;
        list(1)=matriz(i,j);
        list(2)=1;
        while condicion == 0
            if j<7
                j=j+1;
                if matriz(i,j)==list(iterador)
                    list(iterador+1)=list(iterador+1)+1;
                else
                    iterador=iterador+2;
                    list(iterador)=matriz(i,j);
                    list(iterador+1)=1;
                end
                while j ~=1
                   i=i+1;
                   j=j-1;
                   if matriz(i,j)==list(iterador)
                        list(iterador+1)=list(iterador+1)+1;
                   else
                        iterador=iterador+2;
                        list(iterador)=matriz(i,j);
                        list(iterador+1)=1;
                    end
                end
                i=i+1;
                if matriz(i,j)==list(iterador)
                    list(iterador+1)=list(iterador+1)+1;
                else
                    iterador=iterador+2;
                    list(iterador)=matriz(i,j);
                    list(iterador+1)=1;
                end
                while i ~= 1
                   j=j+1;
                   i=i-1;
                   if matriz(i,j)==list(iterador)
                        list(iterador+1)=list(iterador+1)+1;
                   else
                        iterador=iterador+2;
                        list(iterador)=matriz(i,j);
                        list(iterador+1)=1;
                   end
                end
            elseif j==7 || j==8
                if j==7
                    j=j+1;
                    if matriz(i,j)==list(iterador)
                        list(iterador+1)=list(iterador+1)+1;
                    else
                        iterador=iterador+2;
                        list(iterador)=matriz(i,j);
                        list(iterador+1)=1;
                    end
                end
                while i<8
                   i=i+1;
                   j=j-1;
                   if matriz(i,j)==list(iterador)
                    list(iterador+1)=list(iterador+1)+1;
                   else
                    iterador=iterador+2;
                    list(iterador)=matriz(i,j);
                    list(iterador+1)=1;
                   end
                end
                j=j+1;
                if matriz(i,j)==list(iterador)
                    list(iterador+1)=list(iterador+1)+1;
                else
                    iterador=iterador+2;
                    list(iterador)=matriz(i,j);
                    list(iterador+1)=1;
                end
                while j<8
                    j=j+1;
                    i=i-1;
                    if matriz(i,j)==list(iterador)
                        list(iterador+1)=list(iterador+1)+1;
                    else
                        iterador=iterador+2;
                        list(iterador)=matriz(i,j);
                        list(iterador+1)=1;
                    end
                end
                if i<8
                    i=i+1;
                    if matriz(i,j)==list(iterador)
                        list(iterador+1)=list(iterador+1)+1;
                    else
                        iterador=iterador+2;
                        list(iterador)=matriz(i,j);
                        list(iterador+1)=1;
                    end
                end
            end
            if i==8 && j==8
                condicion=1;
            end
        end
        vector=list;
end