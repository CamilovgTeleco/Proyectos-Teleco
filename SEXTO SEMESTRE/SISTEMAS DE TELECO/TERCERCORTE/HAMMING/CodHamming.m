function Trama=CodHamming
    %Ciclo para verificar que se ingresó una trama binaria y que su
    %longitud es menor a 25
    while true
       tramaInicial=input("Digite la trama: ",'s');
       if length(tramaInicial)>0 && length(tramaInicial)<=25
           verificar=1;
           for i=1:length(tramaInicial)
              if tramaInicial(i)~="0" 
                 if tramaInicial(i)~="1"
                    verificar=0;
                    i=length(tramaInicial);
                 end
              end
           end
           if verificar==1
              break 
           else
               disp("Digito un valor no binario")
           end
       else
           disp("Trama inválida")
       end
    end
    
    N=0;
    iterador=1;
    iterador2=1;
    posicion=2^N;
    tramaProvisional="";
    filas=0;
    %Aqui se crea la trama en la que las posiciones donde va el bit de
    %prioridad se guarda con un %
    while iterador<=length(tramaInicial)
        if iterador2==posicion
           N=N+1;
           posicion=2^N;
           tramaProvisional=tramaProvisional+"%";
        else
            tramaProvisional=tramaProvisional+tramaInicial(iterador);
            iterador=iterador+1;
        end
        iterador2=iterador2+1;
    end
    
    matriz=""; 
    tramaProvisional=convertStringsToChars(tramaProvisional);
    %Aqui se crea un vector que simula lo que uno vería en la matriz con
    %filas FP. Los cuadros se representan con "+" y los datos se extraen de
    %una vez. Los valores que se saltan se representan con "-".
    for i=1:N
        salto=0;
        obtener=0;
        paridad=2^(i-1);
        for j=1:iterador2-1
            if j==paridad
                matriz=matriz+"+";
                obtener=obtener+1;
            elseif j>paridad
                if obtener<paridad
                   obtener=obtener+1;
                   matriz=matriz+tramaProvisional(j);
                else
                    if salto<paridad
                       salto=salto+1;
                       matriz=matriz+"-";
                    else
                        matriz=matriz+tramaProvisional(j);
                        obtener=1;
                        salto=0;
                    end
                end
            else
                matriz=matriz+"-";
            end
        end
    end
    matriz=convertStringsToChars(matriz); %aqui esta el vector que se convierte en matriz a la hora de mostrarla en la interfaz
    posicion1=1;
    disp("")
    
    posicion1=1;
    for i=1:N
      posicion=i*length(tramaProvisional);
      valor=convertStringsToChars(matriz(posicion1:posicion));
      unos=0;
      for j=1:length(valor) 
          if valor(j)=="1"
             unos=unos+1; 
          end
      end
      if mod(unos,2)==0
          tramaProvisional(2^(i-1))="0";
      else
          tramaProvisional(2^(i-1))="1";
      end
      posicion1=1+posicion;
    end
    %El codigo que va desde la línea 105 hasta la 142 es extraido de la
    %funcion DecHamming. Había intentado manejar la matriz desde el inicio
    %pero surgieron resto de errores entonces pues hice todo lo que hice
    %arriba. matriz2 es la matriz ya para mostrar en
    %la interfaz. Sorry si hice cosas de más tqm
    %
    for i=1:N
        paridad=2^(i-1);
        salto=0;
        obtener=0;
        valor="";
        for j=1:length(tramaProvisional)
           if j==paridad
               %este valor se podria resaltar en otro color para indicar
               %que es el bit de paridad de la fila que se está analizando
               %de la matriz
              valor=valor+tramaProvisional(j);
              obtener=obtener+1;
           elseif j>paridad
               if obtener<paridad
                   obtener=obtener+1;
                   valor=valor+tramaProvisional(j);
               else
                    if salto<paridad
                       salto=salto+1;
                       valor=valor+"-";
                    else
                        valor=valor+tramaProvisional(j);
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
        matriz2(i,1)=valor;
    end
    disp(matriz2)
    %
    disp("Trama resultante:")
    disp(tramaProvisional)
    Trama=tramaProvisional;
end