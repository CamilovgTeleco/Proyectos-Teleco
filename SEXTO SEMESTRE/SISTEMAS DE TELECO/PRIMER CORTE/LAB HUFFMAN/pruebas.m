clear
clc
message=input("Mensaje: ",'s');
message2="";
j=1;
car=0;

for i=1:length(message)  %spaces in the message are deleted and the message is converted into upper case
    if message(i)~=32
        if message(i)>=65 && message(i)<=90
            message2(j)=message(i);
            car=car+1;
        elseif message(i)>=97 && message(i)<=122
            message2(j)=char(message(i)-32);
            car=car+1;
        end
        j=j+1;
    end
end

if car==length(message2) % it's checked if all of the characters are letters
    
    if length(message2)>=10 && length(message2)<=15 %It's checked if the typed message has more than 9 characters but less than 16
        letters=unique(message2,'stable');%unique characters are stored
        prob=zeros(1,length(letters));%array to stored the values of probability
        for i=1:length(letters)
            prob(1,i)=length(find(message2(1,:)==letters(i)))/length(message2);%probability is calculated
            prob(2,i)=i; %position of the character is stored
            prob(3,i)=i;
        end
        array_sorted=prob;
        prob=sort_array(prob);
        provitional_array=prob(3,:);
        n=1;
        condition=0;
        counter=0;
        %el orden con el que lo pongo es antepenultimo ultimo en la
        %concatenación de los numeros que representan los caracteres
        for i=length(prob):-1:1
            %counter=0;
            if i>1
                prob(1,i-1)=prob(1,i)+prob(1,i-1);
                trama(n,1)=prob(3,i);
                trama(n,2)=1;
                n=n+1;
                trama(n,1)=prob(3,i-1);
                trama(n,2)=0;
                n=n+1;
                value=prob(3,i);
                value2=num2str(value);
                prob(3,i-1)=prob(3,i-1)*(10^(length(value2)))+prob(3,i); %multiplico por 10 a la algo para correr bien el numero
                prob(:,length(prob(1,:)))=[];
                if length(prob)~=1
                    for j=length(prob(1,:)):-1:1
                        if j>1
                            if prob(1,j)>prob(1,j-1)
                                value=prob(:,j-1);
                                value2=prob(:,j);
                                prob(:,j)=value;
                                prob(:,j-1)=value2;
                            else
                                j=1;
                            end
                        end
                    end
                end
                i=i-1;     
            end
        end
        letters_representation(:,1)=transpose(letters);
        for i=1:length(provitional_array)
            n=2;
           for j=length(trama(:,1)):-1:1  
               if length(find(num2str(trama(j,1))==num2str(i)))>0
                  letters_representation(i,n) = num2str(trama(j,2));
                  n=n+1;
               end
           end
        end
        minimum_length=-log2(array_sorted(1,:)); %estan ordenadas por orden de aparicion, o sea l a m i n
        entropy=sum(-array_sorted(1,:).*log2(array_sorted(1,:)));%este igual
        unique_characters=letters(provitional_array(:));
        
    %CALCULUS
    end
else
    disp("Ingresó caracter no válido")
end
