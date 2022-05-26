function valor= PseudoTernario(trama2)
    trama=convertStringsToChars(trama2);
    bits=length(trama);
    vector=[];
    vector2=[];
    iterador=1;
    %Se supone que el estado anterior era alto
    estadoanterior=1;
    for i=1:bits
        paso=i-1;
        if trama(i)=="1"
            valor=0;
        else
            if estadoanterior==-1
                valor=1;
                estadoanterior=1;
            else
               valor=-1;
               estadoanterior=-1; 
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

