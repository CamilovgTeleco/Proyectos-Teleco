function vector=How2Fill(array,op)
    if op==0
        H2F=randi([1,3],1)%a random number is created in order to determine which filling method will be used
    elseif op==1
        H2F=1;
    elseif op==2
        H2F=2;
    elseif op==3
        H2F=3;
    end
    iterador=1;
    if H2F==1
        for i=1:10
           for j=1:10
               vector2(i,j)=array(iterador);
               iterador=iterador+1;
           end
        end
    elseif H2F==2
        for i=1:10
           for j=1:10
               vector2(j,i)=array(iterador);
               iterador=iterador+1;
           end
        end 
    elseif H2F==3
        condicion = 0;
        i=1;
        j=1;
        vector2(i,j)=array(iterador);
        while condicion == 0
            if j<9
                j=j+1;
                iterador=iterador+1;
                vector2(i,j)=array(iterador);
                while j ~=1
                   i=i+1;
                   j=j-1;
                   iterador=iterador+1;
                   vector2(i,j)=array(iterador);
                end
                i=i+1;
                iterador=iterador+1;
                vector2(i,j)=array(iterador);
                while i ~= 1
                   j=j+1;
                   i=i-1;
                   iterador=iterador+1;
                   vector2(i,j)=array(iterador);
                end
            elseif j==9 || j==10
                if j==9
                    j=j+1;
                    iterador=iterador+1;
                    vector2(i,j)=array(iterador);
                end
                while i<10
                   i=i+1;
                   j=j-1;
                   iterador=iterador+1;
                   vector2(i,j)=array(iterador);
                end
                j=j+1;
                iterador=iterador+1;
                vector2(i,j)=array(iterador);
                while j<10
                    j=j+1;
                    i=i-1;
                    iterador=iterador+1;
                    vector2(i,j)=array(iterador);
                end
                if iterador<100
                    i=i+1;
                    iterador=iterador+1;
                    vector2(i,j)=array(iterador);
                end
            end
            if i==10 && j==10
                condicion=1;
            end
        end
    end  
    vector=vector2;
end