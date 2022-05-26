clear;clc
alphabet4='FGHI';
alphabet5='ABCDE';
alphabet6='JKLMNO';
% char(randi([65,90],1,4))
error_message="The typed message doesn't use the specified alphabet"; % -2
error_message2="The typed message has a base that the program doesn't support"; %-1

message=input('Alphabet for base 4: FGHI\nAlphabet for base 5: ABCDE\nAlphabet for base 6: JKLMNO\nType a message with one of the alphabets shown above ','s');

if length(message)>=7 && length(message)<=12
   message=upper(message);
   [base,error,n_character]=character2numbers(alphabet4,alphabet5,alphabet6,message);
   if error==0
      L=length(message);
      decimal_value=0;
      
      for i=1:length(message)
         decimal_value=vpa(decimal_value+n_character(i).*(base^-i));
      end
      
      binary_table(1,1)=round(decimal_value,8);
      binary_table(1,2)=binary_table(1,1)*2;
      binary_table(1,3)=floor(binary_table(1,2));
      
      binTOdec=[];
      decTObase=zeros(length(message),3);
      condition=0;
      j=2;
      while condition==0
        binary_table(j,1)=binary_table(j-1,2)-binary_table(j-1,3);
        binary_table(j,2)=binary_table(j,1)*2;
        binary_table(j,3)=floor(binary_table(j,2));
        j=j+1;
        where2cut=find(binary_table(:,3)==1);
        if length(where2cut)>0
          for i=1:length(where2cut)
            binTOdec(i)=round(vpa(2^(-where2cut(i))),8);
          end
          decTObase(1,1)=round(sum(binTOdec(:)),8);
          decTObase(1,2)=decTObase(1,1)*base;
          decTObase(1,3)=floor(decTObase(1,2));
          for i=2:length(message)
            decTObase(i,1)=decTObase(i-1,2)-decTObase(i-1,3);
            decTObase(i,2)=decTObase(i,1)*base;
            decTObase(i,3)=floor(decTObase(i,2));
          end
          
          for i=1:length(message)-1
              array(i)=(n_character(i)==decTObase(i,3));
          end
          if sum(array)==(L-1)
              a=i;
              if n_character(length(message))>0
                  number2proof=n_character(length(message))-0.5;
                  if decTObase(length(message),2)>=number2proof
                    decTObase(length(message),3)=round(decTObase(length(message),2));
                    condition=1;
                  end
              else
%                   if decTObase(length(message),3)<1
                     decTObase(length(message),3)=0; 
                     condition=1;
%                   end
              end
          end
        end
      end
   elseif error==-1
       clc;
       disp("The typed message has a base that the program doesn't support")
   elseif error==-2
       clc;
       disp("The typed message doesn't use the specified alphabet")
   end
else
   disp("The typed message doesn't is too short or too long")
end

