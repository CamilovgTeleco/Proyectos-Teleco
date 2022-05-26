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
    
if length(message2)>=10 && length(message2)<=15 %It's checked if the typed message has more than 9 characters but less than 16
    letters=unique(message2,'stable');%unique characters are stored
    prob=zeros(1,length(letters));%array to stored the values of probability
        
    for i=1:length(letters)
        prob(1,i)=length(find(message2(1,:)==letters(i)))/length(message2);%probability is calculated
        prob(2,i)=i; %position of the character is stored
        prob(3,i)=i;
    end

    for i=1:length(prob)
        for j=1:length(prob)-1
        variable=zeros(2,1);
        variable2=zeros(2,1);
            if i<j
                if prob(1,i)<prob(1,j)
                   variable=prob(:,i);
                   variable2=prob(:,j);
                   prob(:,j)=variable;
                   prob(:,i)=variable2;
                elseif prob(1,i)==prob(1,j)
                   if prob(2,i)<prob(2,j) %miro cual caracter apareció primero
                        variable=prob(:,i);
                        variable2=prob(:,j);
                        prob(:,i)=variable2;
                        prob(:,j)=variable;
                   end
                end 
            elseif i>j
                if prob(1,i)>prob(1,j)
                   variable=prob(:,i);
                   variable2=prob(:,j);
                   prob(:,j)=variable;
                   prob(:,i)=variable2;
                elseif prob(1,i)==prob(1,j)
                   if prob(2,i)<prob(2,j)
                        variable=prob(:,i);
                        variable2=prob(:,j);
                        prob(:,i)=variable2;
                        prob(:,j)=variable;
                   end
                end
            end 
        end
    end
    for i=1:length(prob)
        for j=1:length(prob)-1
            if prob(1,i)== prob(1,j) && prob(2,i)>prob(2,j) && i<j
                variable=prob(:,i);
                variable2=prob(:,j);
                prob(:,j)=variable;
                prob(:,i)=variable2;
            end
        end
    end
end