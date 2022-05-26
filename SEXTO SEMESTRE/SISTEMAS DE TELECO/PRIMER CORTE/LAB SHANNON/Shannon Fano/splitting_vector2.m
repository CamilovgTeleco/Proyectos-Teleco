function [value1,value2] = splitting_vector2(array,position)
    check_value=0;
    array=array(:,position);
    i=1;
    while check_value==0
        media = sum(array(1,:))/2;
        variable=sum(array(1,1:i));
        if variable>media 
            if i>1 
               variable2=abs(sum(array(1,1:i-1))-media);
               variable=abs(variable-media);
               if variable2<=variable
                   array1=array(2,1:i-1);
                   array2=array(2,i:length(array(1,:)));
                   for j=1:length(array1)
                      if j==1
                         value1=num2str(array1(j));
                      else
                          value1=[value1 num2str(array1(j))];
                      end
                   end
                   for k=1:length(array2)
                      if k==1
                         value2=num2str(array2(k));
                      else
                          value2=[value2 num2str(array2(k))];
                      end
                   end
                   check_value=1;
               else
                   array1=array(2,1:i);
                   array2=array(2,i+1:length(array(1,:)));
                   for j=1:length(array1)
                      if j==1
                         value1=num2str(array1(j));
                      else
                          value1=[value1 num2str(array1(j))];
                      end
                   end
                   for k=1:length(array2)
                      if k==1
                         value2=num2str(array2(k));
                      else
                          value2=[value2 num2str(array2(k))];
                      end
                   end
                 
                   check_value=1;
               end
               
            end
        end
        i=i+1;
    end
end