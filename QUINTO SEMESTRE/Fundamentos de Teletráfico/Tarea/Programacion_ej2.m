n=5000;
a=randi([0,6],n,2);
a=unique(a,'rows');
c=zeros(28,2);
iterador=1;
for i=1:length(a)
    if a(i,1)>=a(i,2)
        c(iterador,1)=a(i,1);
        c(iterador,2)=a(i,2);
        iterador = iterador + 1;
    end
end
c=unique(c,'rows');
veces=0;
columna_1=0;
columna_2=0;
for i=length(c):-1:1
    if i>1
        columna_1=c(i,1);
        columna_2=c(i,2);
        for p= i-1:-1:1
            if columna_1==c(p,1)|| columna_2==c(p,2)
                veces= veces + 1;
            end
        end
    end
end
veces
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
