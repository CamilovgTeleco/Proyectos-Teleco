function value=CodPro(list)%this function will make the hole process. The function will return an array in which will be stored a number and how many times it is repeated
    disp("Matriz Aleatoria")
    matriz=How2Fill(list,0); %random values are assigned to the matrix
    disp(matriz)
    H2R=input('Select the reading method:\n1 -> horizontal\n2 -> vertical\n3 -> zig zag\n');
    disp("Matriz Secundaria")
    if H2R==1
        value2=Horizontal(matriz);
        matriz2=How2Fill(value2,1);
        disp(matriz2)
        value=value2;
    elseif H2R==2
        value2=Vertical(matriz);
        matriz2=How2Fill(value2,2);
        disp(matriz2)
        value=value2;
    elseif H2R==3
        value2=ZigZag(matriz);
        matriz2=How2Fill(value2,3);
        disp(matriz2)
        value=value2;
    else
        disp("The value is not valid")
    end
end