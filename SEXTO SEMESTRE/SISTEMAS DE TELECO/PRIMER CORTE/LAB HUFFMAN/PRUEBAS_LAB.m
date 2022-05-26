clear;clc
array1=1;
character_order=[1 2 3 4 5];
prob=[0.166666666666667 0.333333333333333 0.166666666666667 0.166666666666667 0.166666666666667;character_order;character_order];
n=1;

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
                
                if length(prob(1,:))~=1
                    
                   if length(array1)==1
                       array1=[1,1];
            for i=1:length(prob(1,:))
                for j=1:length(prob(1,:))
                    variable=zeros(2,1);
                    variable2=zeros(2,1);
                    if i<j 
                        if prob(1,i)<prob(1,j)
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

            for i=1:length(prob(1,:))
                for j=1:length(prob(1,:))
                    if prob(1,i)== prob(1,j) && prob(2,i)>prob(2,j) && i<j
                        variable=prob(:,i);
                        variable2=prob(:,j);
                        prob(:,j)=variable;
                        prob(:,i)=variable2;
                    end
                end
            end
            array_sorted=prob;  
    %
      else
        for i=1:length(prob(1,:))
           
            for j=1:length(prob(1,:))
                variable=zeros(2,1);
                variable2=zeros(2,1);
                if i<j 
                   if prob(1,i)<prob(1,j)
                       variable=prob(:,i);
                       variable2=prob(:,j);
                       prob(:,j)=variable;
                       prob(:,i)=variable2;
                   elseif prob(1,i)==prob(1,j) && length(num2str(prob(3,i)))>1 && length(num2str(prob(3,j)))>1
                       
                       value=prob(3,i);
                       value2=prob(3,j);
                       value3=0;
                       value4=0;
                       counter_total=0;
                       counter=0;
                       counter1=0;
                       counter_condition=0;
                       counter_condition1=0;
                       
                       while counter_total==0
                           value3=floor(value/10);
                           value4=floor(value2/10);
                           if value3==0
                              counter=counter+1;
                              counter_condition=1;
                           else
                               counter=counter+1;
                               value=floor(value/10);
                           end

                           if value4==0
                              counter1=counter1+1;
                              counter_condition1=1;
                           else
                               counter1=counter1+1;
                               value2=floor(value2/10);
                           end
                           counter_total=counter_condition*counter_condition1;
                       end
                     if counter==counter1 
                           value=floor(prob(3,i)/(10^(counter-1)));
                           value2=floor(prob(3,j)/(10^(counter-1)));
                           value=find(character_order==value);%voy a ver quien estaba primero para poder organizar again
                           value2=find(character_order==value2);
                           if value<value2 
                              variable=prob(:,i);
                              variable2=prob(:,j);
                              prob(:,j)=variable;
                              prob(:,i)=variable2;
                           end
                      end 
                   end

                elseif i>j 
                        if prob(1,i)>prob(1,j)
                           variable=prob(:,i);
                           variable2=prob(:,j);
                           prob(:,j)=variable;
                           prob(:,i)=variable2;
                        elseif prob(1,i)==prob(1,j) && length(num2str(prob(3,i)))>1 && length(num2str(prob(3,j)))>1
                       value=prob(3,i);
                       value2=prob(3,j);
                       value3=0;
                       value4=0;
                       counter_total=0;
                       counter=0;
                       counter1=0;
                       counter_condition=0;
                       counter_condition1=0;
                       while counter_total==0
                           value3=floor(value/10);
                           value4=floor(value2/10);
                           if value3==0
                              counter=counter+1;
                              counter_condition=1;
                           else
                               counter=counter+1;
                               value=floor(value/10);
                           end

                           if value4==0
                              counter1=counter1+1;
                              counter_condition1=1;
                           else
                               counter1=counter1+1;
                               value2=floor(value2/10);
                           end
                           counter_total=counter_condition*counter_condition1;
                       end
                       if counter>counter1
                        if counter==counter1
                           value=floor(prob(3,i)/(10^(counter-1)));
                           value2=floor(prob(3,j)/(10^(counter-1)));
                           value=find(character_order==value);%voy a ver quien estaba primero para poder organizar again
                           value2=find(character_order==value2);
                           if value>value2 
                              variable=prob(:,i);
                              variable2=prob(:,j);
                              prob(:,j)=variable;
                              prob(:,i)=variable2;
                           end
                       end
                     end
                 end
                end
        end
        end
                end
                i=i-1;     
            end
        end
        end





    
        
    