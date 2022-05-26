function vector=How2Fill(array)

    H2F=1+0*randi([1,3],1)%a random number is created in order to determine which filling method will be used
    iterador=1;
    if H2F==1
        for i=1:8
           for j=1:8
               vector2(i,j)=array(iterador);
               iterador=iterador+1;
           end
        end
    elseif H2F==2
        for i=1:8
           for j=1:8
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
            if j<7
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
            elseif j==7 || j==8
                if j==7
                    j=j+1;
                    iterador=iterador+1;
                    vector2(i,j)=array(iterador);
                end
                while i<8
                   i=i+1;
                   j=j-1;
                   iterador=iterador+1;
                   vector2(i,j)=array(iterador);
                end
                j=j+1;
                iterador=iterador+1;
                vector2(i,j)=array(iterador);
                while j<8
                    j=j+1;
                    i=i-1;
                    iterador=iterador+1;
                    vector2(i,j)=array(iterador);
                end
                if iterador<64
                    i=i+1;
                    iterador=iterador+1;
                    vector2(i,j)=array(iterador);
                end
            end
            if i==8 && j==8
                condicion=1;
            end
        end
    end  
    vector=vector2;
end