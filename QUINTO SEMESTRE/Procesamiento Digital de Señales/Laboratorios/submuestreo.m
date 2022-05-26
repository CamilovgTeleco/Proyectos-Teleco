function signal=submuestreo(x,n,a)
    top=numel(n);
    zero=find(n==0);
    muestras=[];
    for i=1:top
        muestras(i)=0;
    end
    prueba=0;
    for i=zero:top
        prueba=n(i)*a;
        for p=i:top
            if n(p)==prueba
                muestras(i)=x(p);
            end
        end
    end
    prueba=0;
    m=zero-1;
    for i=1:(zero-1)
       prueba=n(m)*a;
       for p=1:m
           if n(p)==prueba
               muestras(m)=x(p);
           end
       end
       m = m -1;
    end    
   signal=muestras;       
end