function signal=rampa(n)
    top=numel(n);
    muestra=[];
    for i=1:top
       muestra(i)=0;
    end
    zero=find(n==0);
    if (n(zero+1))>0
        for i=zero:top
            muestra(i)=n(i);
        end
    else
        for i=1:zero
            muestra(i)=n(i);
        end
    end
    signal=muestra;
end