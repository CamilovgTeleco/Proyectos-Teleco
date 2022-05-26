n=500000;
clasificados=zeros(1,10);
colombia_puesto=zeros(1,4);
for w=1:n
%Pais        PTS PG PE PP GF GC DG
Brasil=   [1 36 11 3 1 37 10 27];
Colombia= [2 25 7 4 4 18 15 3];
Uruguay=  [3 24 7 3 5 26 17 9];
Chile=    [4 23 7 2 6 24 22 2];
Argentina=[5 23 6 5 4 15 14 1];
Peru =    [6 21 6 3 6 24 24 0];
Paraguay= [7 21 6 3 6 16 21 -5];
Ecuador = [8 20 6 2 7 23 22 1];
Bolivia = [9 10 3 1 11 13 34 -21];
Venezuela=[10 7 1 4 10 17 34 -17];
%Goles de cada equipo|
goles=zeros(10,1);
goles(:)=5;
%Fixture 
partidos=[9 4 2 1 8 6 5 10 7 3; 9 1 10 3 4 8 2 7 5 6; 8 5 6 2 7 10 1 4 3 9];
resultado=zeros(3,10);
condicion=0;
valor=0;
tabla_momentanea=zeros(10,7);
for i=1:3
    for j=1:10      
      valor=randi(6)-1;
        
      resultado(i,j)=valor;
    end
end

for i=1:3
   for j=2:2:10
       if resultado(i,j-1)>resultado(i,j)
           %Ganador
           tabla_momentanea(partidos(i,j-1),1)=tabla_momentanea(partidos(i,j-1),1)+3; %Suma 3 puntos
           tabla_momentanea(partidos(i,j-1),2)=tabla_momentanea(partidos(i,j-1),2)+1; %Suma 1 partido ganado
           tabla_momentanea(partidos(i,j-1),5)=tabla_momentanea(partidos(i,j-1),5)+resultado(i,j-1); %Suma los goles anotados
           tabla_momentanea(partidos(i,j-1),6)=tabla_momentanea(partidos(i,j-1),6)+resultado(i,j); %Suma los goles recibidos
           %Perdedor
           tabla_momentanea(partidos(i,j),4)=tabla_momentanea(partidos(i,j),4)+1;%Suma un partido perdido
           tabla_momentanea(partidos(i,j),5)=tabla_momentanea(partidos(i,j),5)+resultado(i,j); %Suma los goles anotados
           tabla_momentanea(partidos(i,j),6)=tabla_momentanea(partidos(i,j),6)+resultado(i,j-1); %Suma los goles recibidos
       
       elseif resultado(i,j-1)==resultado(i,j)
           tabla_momentanea(partidos(i,j-1),1)=tabla_momentanea(partidos(i,j-1),1)+1; %Suma 1 punto
           tabla_momentanea(partidos(i,j),1)=tabla_momentanea(partidos(i,j),1)+1; %Suma 1 punto
           tabla_momentanea(partidos(i,j),3)=tabla_momentanea(partidos(i,j),3)+1;
           tabla_momentanea(partidos(i,j-1),3)=tabla_momentanea(partidos(i,j-1),3)+1;
           
           tabla_momentanea(partidos(i,j-1),5)=tabla_momentanea(partidos(i,j-1),5)+resultado(i,j-1);%Sumo goles anotados 
           tabla_momentanea(partidos(i,j-1),6)=tabla_momentanea(partidos(i,j-1),6)+resultado(i,j); %sumo goles recibidos
           
           tabla_momentanea(partidos(i,j),5)=tabla_momentanea(partidos(i,j),5)+resultado(i,j); %Sumo goles anotados
           tabla_momentanea(partidos(i,j),6)=tabla_momentanea(partidos(i,j),6)+resultado(i,j-1); %sumo goles recibidos
       
       elseif resultado(i,j-1)<resultado(i,j)
           %Ganador
           tabla_momentanea(partidos(i,j),1)=tabla_momentanea(partidos(i,j),1)+3; %Suma 3 puntos
           tabla_momentanea(partidos(i,j),2)=tabla_momentanea(partidos(i,j),2)+1; %Suma 1 partido ganado
           tabla_momentanea(partidos(i,j),5)=tabla_momentanea(partidos(i,j),5)+resultado(i,j); %Suma los goles anotados
           tabla_momentanea(partidos(i,j),6)=tabla_momentanea(partidos(i,j),6)+resultado(i,j-1); %Suma los goles recibidos
           %Perdedor
           tabla_momentanea(partidos(i,j-1),4)=tabla_momentanea(partidos(i,j-1),4)+1;%Suma un partido perdido
           tabla_momentanea(partidos(i,j-1),5)=tabla_momentanea(partidos(i,j-1),5)+resultado(i,j-1); %Suma los goles anotados
           tabla_momentanea(partidos(i,j-1),6)=tabla_momentanea(partidos(i,j-1),6)+resultado(i,j); %Suma los goles recibidos
       end
   end
end
tabla_momentanea(:,7)=tabla_momentanea(:,5)-tabla_momentanea(:,6);
tablas_posiciones=[Brasil;Colombia;Uruguay;Chile;Argentina;Peru;Paraguay;Ecuador;Bolivia;Venezuela];
tablas_posiciones(:,2:8)=tabla_momentanea+tablas_posiciones(:,2:8);
tablas_posiciones2=sortrows(tablas_posiciones,2,'descend');

c=unique(tablas_posiciones2(:,2));
c=flip(c);
v=0;
vector=[];
iterador=1;

for i=1:length(c)
    v=find(c(i)==tablas_posiciones2(:,2));
    if length(v)>1
       for j=1:length(v)
           vector(iterador)=v(j);
           iterador=iterador+1;
       end
    end
end
tabla_provisional=zeros(10,8);
v=0;
for i=1:10
    v=find(i==vector);
    if v~=0
        tabla_provisional(i,:)=tablas_posiciones2(i,:);
    end
end
tabla_revisar=tablas_posiciones2(vector,:);
nuevas_posiciones=tablas_posiciones2(:,1);
m=0;
t=0;
p=0;
equipo1=0;
equipo2=0;
moneda=0;
for i=1:9
    if tabla_provisional(i,2)~=0
        m=i+1;
        for j=m:10
            if tabla_provisional(i,2)==tabla_provisional(j,2)
                if tabla_provisional(i,8)<tabla_provisional(j,8)
                    t=nuevas_posiciones(i);
                    p=nuevas_posiciones(j);
                    nuevas_posiciones(i)=p;
                    nuevas_posiciones(j)=t;
                elseif tabla_provisional(i,8)==tabla_provisional(j,8)
                    if tabla_provisional(i,6)<tabla_provisional(j,6)
                        t=nuevas_posiciones(i);
                        p=nuevas_posiciones(j);
                        nuevas_posiciones(i)=p;
                        nuevas_posiciones(j)=t;
                    elseif tabla_provisional(i,6)==tabla_provisional(j,6)
                        equipo1=randi(6)-1;
                        equipo2=randi(6)-1;
                        if equipo1<equipo2
                            t=nuevas_posiciones(i);
                            p=nuevas_posiciones(j);
                            nuevas_posiciones(i)=p;
                            nuevas_posiciones(j)=t;
                        elseif equipo1==equipo2
                            equipo1=1;
                            equipo2=2;
                            moneda=randi(2);
                            if moneda==equipo2
                                t=nuevas_posiciones(i);
                                p=nuevas_posiciones(j);
                                nuevas_posiciones(i)=p;
                                nuevas_posiciones(j)=t;
                            end
                        end
                    end 
                end
            end
        end 
    end
end

tabla_final2=zeros(10,8);
tabla_final2=tablas_posiciones(tablas_posiciones(nuevas_posiciones,1),:);

tabla_clasificados=tabla_final2(1:5,:);
v=0;
for i=1:5
    v=tabla_clasificados(i,1);
    clasificados(v)= clasificados(v)+1;
end

if tabla_clasificados(2,1)==2
        colombia_puesto(1)=colombia_puesto(1)+1;
    elseif tabla_clasificados(3,1)==2
        colombia_puesto(2)=colombia_puesto(2)+1;
    elseif tabla_clasificados(4,1)==2
        colombia_puesto(3)=colombia_puesto(3)+1;
    elseif tabla_clasificados(5,1)==2
        colombia_puesto(4)=colombia_puesto(4)+1;
end
end
clasificados2=clasificados./n;
colombia_puesto2=colombia_puesto./n;
paises=["Brasil",clasificados2(1);"Colombia",clasificados2(2);"Uruguay",clasificados2(3);"Chile",clasificados2(4);"Argentina",clasificados2(5);"Peru",clasificados2(6);"Paraguay",clasificados2(7);"Ecuador",clasificados2(8);"Bolivia",clasificados2(9);"Venezuela",clasificados2(10)]
disp(['La probabilidad de que Colombia clasifique en segundo, tercero, cuarto y quinto es del ',num2str(round(colombia_puesto2,4)), ' respectivamente'])









