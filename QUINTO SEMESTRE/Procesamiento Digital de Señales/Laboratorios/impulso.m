function signal=impulso(n)
    top=numel(n);
    muestra=[];
    
    for i=1:top
        muestra(i)=0;
    end
    
    zero=find(n==0);
    muestra(zero)=1;
    signal=muestra;
end