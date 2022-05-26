clear
clc
message=input("Type your message: ",'s');
message2="";
j=1;
car=0;

for i=1:length(message)
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

comp=0;
j = length(message2);

if car == length(message2)
    if isempty(message2) == 0 && length(message2) <= 34
        for i = 1:length(message2)
            if message2(i) == message2(j)
                comp = comp + 1;
            end
            j = j - 1;
        end
        clear j
        if comp == length(message2)
           letters = unique(message2,'stable');
           freq = zeros(1,length(letters));
           for i=1:length(letters)
               freq(1,i)=length(find(message2(:)==letters(i))); %frecuency of each character is measured
               freq(2,i)=i;
           end
           
           order = sort_array(freq);%sorted array is stored.
           media = sum(order(1,:))/2;%medium value is calculated
           
           [hola1,hola2]=splitting_vector2(order,1:length(order(2,:)));
           table=[];
           table(1,1)=str2num(hola1);
           table(1,2)=0;
           table(2,1)=str2num(hola2);
           table(2,2)=1;
           k=1; %table's row index
           m=3; %next position of the table
           
           while k~=m
               indice=table(k,1);
               if indice>10
                   position3=[];
                   position=gettingPositions(indice);
                   for i=1:length(position)
                          position3(i)=find(order(2,:)==position(i));
                   end
                   [hola1,hola2]=splitting_vector2(order,position3);
                   table(m,1)=str2num(hola1);
                   table(m,2)=0;
                   m=m+1;
                   table(m,1)=str2num(hola2);
                   table(m,2)=1;
                   m=m+1;
                   k=k+1;
               else
                   k=k+1;
               end
           end
%            vector=[];
%            for i=1:length(order(2,:))
%             value=order(2,i);
%             k=0;
%             value2=0;
%              for j=1:length(table(:,1))
%                if length(find(num2str(value)==num2str(table(j,1))))>0
%                  if k==0
%                     value2=num2str(table(j,2));
%                     k=k+1;
%                  else
%                     value2=[value2 num2str(table(j,2))];
%                  end
%                end
%              end
%              vector(i,1)=str2num(value2);
%            end
        end
    end
end
