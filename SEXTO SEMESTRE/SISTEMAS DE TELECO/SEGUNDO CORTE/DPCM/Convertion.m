function trama = Convertion(vector)
    vector2=abs(vector);
    vector2=sort(vector2,'descend');
    bits=length(dec2bin(vector2(1)));
    trama2="";
    for i=1:100
       if vector(i)>=0
           trama2=trama2+"0"+dec2bin(vector(i),bits);
       else
           trama2=trama2+"1"+dec2bin(abs(vector(i)),bits);
       end
       trama2=trama2+" ";
    end
    trama=trama2;
end

