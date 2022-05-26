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
        end
        
        [value,posit]=sort(prob,2);
        orden(1,:)=value(1,:);
        orden(2,:)=posit(1,:);
        orden(3,:)=posit(1,:);
        orden=fliplr(orden); % Pre-ordered according to increasing probability
        
        for j=1:length(orden) % Crescent matrix order taking into account the probability and the position of the letter in the vector letters
            for i=1:length(orden)-1
                if orden(1,i)==orden(1,i+1) && orden(2,i)>orden(2,i+1) %order the same probabilitis by their orden of appearance
                    orden(:,[i i+1])=orden(:,[i+1 i]);
                end
            end
        end
        
        for i=1:length(letters) % Secondary order /Re-ordering the letters
            ordenamiento(1,i)=letters(orden(2,i));
        end
        
        n=1;
%         for i=length(orden):-1:1
%             if i>1
%                 orden(1,i-1)=orden(1,i)+orden(1,i-1);
%                 trama(n,1)=orden(3,i);
%                 trama(n,2)=1;
%                 n=n+1;
%                 trama(n,1)=orden(3,i-1);
%                 trama(n,2)=0;
%                 n=n+1;
%                 orden(3,i-1)=orden(3,i)*10+orden(3,i-1);
%                 orden(:,length(orden))=[];
%                 i=i-1;  
%         if length(orden(1,:))~=1
%             [value,posit]=sort(orden,2);
%             orden(1,:)=value(1,:);
%             orden(2,:)=orden(2,posit(1,:));
%             orden=fliplr(orden);
%             for j=1:length(orden)
%                 for c=1:length(orden)-1
%                     if orden(1,c)==orden(1,c+1) && mod(orden(3,c),10)>mod(orden(3,c+1),10)
%                         orden(:,[c c+1])=orden(:,[c+1 c]);
%                     end
%                 end
%             end
%         end
%                     
%                     
%                          
%             end
%                 
%         end

    end
else
    disp("Ingresó caracter no válido")
end