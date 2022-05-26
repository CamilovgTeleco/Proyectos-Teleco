%Punto 1
a=1:9;
b=perms(a);
conteo=0;
valores=zeros(1,5);

for i=1:362880
    valores(1)=b(i,1)+b(i,2);
    valores(2)=b(i,2)+b(i,3)+b(i,4);
    valores(3)=b(i,4)+b(i,5)+b(i,6);
    valores(4)=b(i,6)+b(i,7)+b(i,8);
    valores(5)=b(i,8)+b(i,9);
    if valores(1)==valores(2) && valores(2)==valores(3) && valores(3)==valores(4) && valores(4)==valores(5)
        conteo = conteo+1;
    end 
end
conteo


