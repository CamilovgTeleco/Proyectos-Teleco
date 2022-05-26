function [base,error,value]=character2numbers(a4,a5,a6,message)

    unique_characters=unique(message);
    baset=length(unique_characters);
    errort=0;
    j=1;
    value_1=[]; %array in which letters representation will be stored
    if baset>=4 && baset<=6
        if baset ==4
            for i=1:length(message)
               if find(message(i)==a4)>=1 %It's corrovorated whether each character of the message is a valid character or not
                   value_1(j)=(find(message(i)==a4))-1;%A numeric representation is assigned to the character
                   j=j+1;
               end    
            end
        elseif baset==5
            for i=1:length(message)
               if find(message(i)==a5)>=1
                   value_1(j)=(find(message(i)==a5))-1;
                   j=j+1;
               end    
            end
        elseif baset==6
            for i=1:length(message)
               if find(message(i)==a6)>=1
                   value_1(j)=(find(message(i)==a6))-1;
                   j=j+1;
               end    
            end
        end
        if length(value_1)~=length(message)
            errort=-2; %This error means that the user typed a message that has a number of unique characters that is equal to any of the bases that 
                       %the program supports, but the message doesn't use the proper alphabet
            baset=-1;
        end
        
    else
        errort=-1;
    end
    error=errort;
    value=value_1;
    base=baset;
end