function value=CodPro(list)%this function will make the hole process. The function will return an array in which will be stored a number and how many times it is repeated
    matriz=How2Fill(list) %random values are assigned to the matrix
    H2R=input('Select the reading method:\n1 -> horizontal\n2 -> vertical\n3 -> zig zag\n');
    if H2R==1
        value=Horizontal(matriz);%ejecutar para sugerir mejor opcion
    elseif H2R==2
        value=Vertical(matriz);%ejecutar para sugerir mejor opcion
    elseif H2R==3
        value=ZigZag(matriz);%ejecutar para sugerir mejor opcion
    else
        disp("The value is not valid")
    end
end