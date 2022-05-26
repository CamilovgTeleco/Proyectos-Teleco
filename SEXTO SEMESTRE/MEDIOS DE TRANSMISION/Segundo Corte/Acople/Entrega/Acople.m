function valores= Acople(Zo,Zl,f,l,E_r,TAc)
    z=-l:l/1000:0;
    lambda=3e8/(sqrt(E_r)*f);
    Ro_l=(Zl-Zo)/(Zl+Zo);
    Betta=1i*((2*pi)/lambda);
    imprimir=strcat("λ=",num2str(lambda));
    disp(imprimir)
    if TAc==1
        for i=1:length(z)
            Z(i)=((1+Ro_l.*exp(2*Betta.*z(i)))/(1-Ro_l.*exp(2*Betta.*z(i))));
        end
        Z=fliplr(Z);
        z=fliplr(z);
        posicion=1;
        condicion=0;
        valor=abs(real(Z(1))-Z(1));
        i=2;
        angulo=angle(Z(1));
        while condicion==0
            if abs(real(Z(i))-Z(i))<valor
               valor=abs(real(Z(i))-Z(i));
               posicion=i;
            end
            if angulo>=0
                if angle(Z(i))<0
                    condicion=1;
                end
            else
                if angle(Z(i))>=0
                   condicion=1; 
                end
            end
            i=i+1;
        end
        Za=sqrt(real(Z(posicion))*Zo^2);
        valores=[Za abs(z(posicion))];
        mensaje1=strcat("La distancia a la que debe colocarse el segmento λ/4 es de ",num2str(valores(2)),"m");
        mensaje2=strcat("La impedancia caracteristica del segmento λ/4 es de ",num2str(valores(1)),"Ω");
        disp(mensaje1)
        disp(mensaje2)
    elseif TAc==2
        for i=1:length(z)
            Y(i)=1./((1+Ro_l.*exp(2*Betta.*z(i)))/(1-Ro_l.*exp(2*Betta.*z(i))));
            Yr(i)=real(Y(i));
            Yi(i)=abs(Yr(i)-conj(Y(i)));
        end
        Y=fliplr(Y);
        Yr=fliplr(Yr);
        z=fliplr(z);
        Yi=fliplr(Yi);
        condicion=0;
        posicion=1;
        posicion2=1;
        iterador=1;
        positivo=0;
        negativo=0;
        while condicion==0
            if iterador>1 
                if Yr(iterador)>1 && Yr(iterador)<1.1 && angle(Y(iterador))>=0
                    posicion=iterador;
                    positivo=1;
%                     condicion=1;
                elseif Yr(iterador)>1 && Yr(iterador)<1.1 && angle(Y(iterador))<0
                    posicion2=iterador;
                    negativo=1;
                end
            end
            condicion=positivo*negativo;
            iterador=iterador+1;
        end
        condicion=0;
        iterador=1;
        posicion3=0;
        while condicion==0
           if iterador>1
               if Yi(iterador)>Yi(iterador+1) && Yi(iterador)>Yi(iterador-1)
                   condicion=1;
                   posicion3=iterador;
               end
           end
           iterador=iterador+1;
        end
        distancia=-1;
        if abs(z(posicion))<abs(z(posicion2))
           distancia=abs(z(posicion2))-abs(z(posicion3))-0.05;
        elseif abs(z(posicion2))<abs(z(posicion))
           distancia=0.25*lambda+(0.25*lambda-(abs(z(posicion3))-abs(z(posicion))));
        end
        valor=[distancia abs(z(posicion))];
        mensaje1=strcat("La distancia a la que debe colocarse el stub es de ",num2str(valor(2)),"m");
        mensaje2=strcat("La longitud del stub es de ",num2str(valor(1)),"m");
        disp(mensaje1)
        disp(mensaje2)
        valores=valor;
    else
        disp("La opción ingresada no es válida")
        valores=-1;
    end
end

