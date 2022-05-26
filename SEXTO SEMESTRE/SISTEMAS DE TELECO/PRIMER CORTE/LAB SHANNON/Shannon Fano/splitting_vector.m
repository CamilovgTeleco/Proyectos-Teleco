function [array1,array2] = splitting_vector(array)
    check_value=0;
    i=1;
    while check_value==0
        media = sum(array(1,:))/2;
        variable=sum(array(1,1:i));
        if variable>media 
            if i>1 
               variable2=abs(sum(array(1,1:i-1))-media);
               variable=abs(variable-media);
               if variable2<=variable
                   array1(1,:)=array(1,1:i-1);
                   array1(2,:)=array1(1,:)*0;
                   array1(3,:)=array(2,1:i-1);
                   
                   array2(1,:)=array(1,i:length(array(1,:)));
                   array2(2,:)=array2(1,:)*0+1;
                   array2(3,:)=array(2,i:length(array(1,:)));
                   check_value=1;
               else
                   array1(1,:)=array(1,1:i);
                   array1(2,:)=array1(1,:)*0;
                   array1(3,:)=array(2,1:i);
                   
                   array2(1,:)=array(1,i+1:length(array(1,:)));
                   array2(2,:)=array2(1,:)*0+1;
                   array2(3,:)=array(2,i+1:length(array(1,:)));
                   check_value=1;
               end
            end
        end
        i=i+1;
    end
end