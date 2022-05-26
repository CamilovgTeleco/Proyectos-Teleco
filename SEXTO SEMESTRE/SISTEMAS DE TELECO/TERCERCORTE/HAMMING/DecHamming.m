function DecHamming(trama)
    trama=convertStringsToChars(trama);
    disp("----------------------------------")
    while true %este ciclo se puede cambiar por botones uwu
       opcion=input("Digite 1 para modificar un bit\nDigite 2 para seguir sin modificar ningún bit\n",'s');
       if opcion=="1" || opcion=="2"
           break
       else
           disp("Opción no válida")
       end
    end
    if opcion=="1"
        while true
            bit=input("Digite el bit a modificar: ",'s');
            if str2num(bit)>=1 && str2num(bit)<=length(trama)
                break
            else
                disp("Bit no válido")
            end
        end
        if trama(str2num(bit))=="0"
            trama(str2num(bit))="1";  
        else
            trama(str2num(bit))="0";
        end   
    end
    N=0;
    %Aqui se obtiene cuantas posiciones reservadas se tiene
    for i=1:length(trama)
        posicion=2^N;
        if i==posicion
           N=N+1; 
        end
    end
    %Aqui abajo se arma la matriz con los valores binarios y los guiones
    for i=1:N
        paridad=2^(i-1);
        salto=0;
        obtener=0;
        valor="";
        for j=1:length(trama)
           if j==paridad
               %este valor se podria resaltar en otro color para indicar
               %que es el bit de paridad de la fila que se está analizando
               %de la matriz
              valor=valor+trama(j);
              obtener=obtener+1;
           elseif j>paridad
               if obtener<paridad
                   obtener=obtener+1;
                   valor=valor+trama(j);
               else
                    if salto<paridad
                       salto=salto+1;
                       valor=valor+"-";
                    else
                        valor=valor+trama(j);
                        obtener=1;
                        salto=0;
                    end
               end
           else
               if j==1
                   valor="-";
               else
                   valor=valor+"-";
               end
           end
        end
        matriz(i,1)=valor;
    end
    disp(matriz)
    %Aqui se hace el check de si hay errores o no
    check=zeros(length(matriz(:,1)),1);
    for i=1:N
        valor=convertStringsToChars(matriz(i,1));
        conteo=0;
        for j=1:length(valor)
            if valor(j)=="1"
                conteo=conteo+1;
            end
        end
        if mod(conteo,2)==0
           check(i)=0;
        else
           check(i)=1;
        end
    end
    %En la interfaz se podría mostrar matriz y al lado mostrar check. Estas
    %dos weas ya están calculadas
    posicion=0;
    
    %En este for lo que se hace es calcular la posicion del error
    for i=length(check(:,1)):-1:1
        posicion=check(i)*2^(i-1)+posicion;
    end
    %Aquí lo que se puede hacer en la gui es mostrar en la parte de abajo la trama 
    %con un guion en la posicion donde se haya cambiado un bit. Luego decir
    %como "Se debe corregir el bit en la posicion tal". Luego de esto
    %mostrar la trama corregida. En caso de que no se haya cambiado ningún
    %bit mostrar solo la trama que llegó y un mensaje que diga "La trama
    %llegó sin errores"
    if posicion==0
        disp("La trama llegó sin errores")
        disp(trama)
    else
       disp(trama)
       disp("Se detectó un error, se debe cambiar el bit en la posición:")
       disp(posicion)
        if trama(posicion)=="0"
            disp("Mostrando trama con el bit a cambiar")
            trama(posicion)="-";
            disp(trama)
            trama(posicion)="1";
            disp(trama)
        else
            disp("Mostrando trama con el bit a cambiar")
            trama(posicion)="-";
            disp(trama)
            trama(posicion)="0";
            disp(trama)
        end   
        
    end
    
end