function valor = MLT3(trama2)
    trama=convertStringsToChars(trama2);
    bits=length(trama);
    vector=[];
    vector2=[];
    %se asume que se vengo en el cero referencia
    %y que voy subiendo
    
    %sign1 y sign2 se determinaron con base en el ejemplo que se hizo en clase
    
    sign1=0;%vengo subiendo o bajando,0 significa subiendo(flecha hacia abajo, o que vengo de abajo) 
    %       y 1 significa bajando(flecha hacia arriba, o que vengo de arriba)
    sign2=0;%en cual de los 3 estados estoy
    valor=0;
    iterador=1;
    for i=1:bits
        paso=i-1;
        if trama(i)=="1"
            if sign1==0
               if sign2==0
                  valor=1;
                  sign1=1;%voy a bajar
                  sign2=1;%donde estaba
               elseif sign2==-1
                   valor=0;
                   sign2=0;
               end
            else
                if sign2==1
                    valor=0;
                    sign2=0;
                elseif sign2==0
                    valor=-1;
                    sign2=-1;
                    sign1=0;
                end
            end
        end
        while paso<i
            vector2(iterador)=paso;
            vector(iterador)=valor;
            iterador=iterador+1;
            paso=paso+1/1000;
        end
    end
    valor=[vector;vector2];
end

