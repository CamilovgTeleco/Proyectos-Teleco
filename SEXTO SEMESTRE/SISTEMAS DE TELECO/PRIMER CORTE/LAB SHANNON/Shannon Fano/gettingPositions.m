function array=gettingPositions(array1)
    array1=num2str(array1);
    for i=1:length(array1)
       array2(i)=str2num(array1(i)); 
    end
    array=array2;
end