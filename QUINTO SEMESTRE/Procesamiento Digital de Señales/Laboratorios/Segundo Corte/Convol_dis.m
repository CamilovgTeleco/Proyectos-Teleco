function [resultado_conv,vector_temporal]=Convol_dis(n,x,y)

if length(n)==length(x) && length(n)==length(x)
    orig=find(n==0);
    y_r=fliplr(y);
    ceros_inferio=zeros(1,orig-1); %Ceros que necesito agregar a la izquierda 
    ceros_lim_inf=zeros(1,(numel(n)-orig));%Los ceros que se agregan son para que al momento de hacer la convolución tenga sólo una multiplicacion, o sea que esté en los límites de la convolución para los cuales esta es diferente de 0
    vector_desplazado=[ceros_inferio  ceros_lim_inf  y_r   ceros_inferio ceros_lim_inf];
    resultado=[];
    desplazamientos=length(ceros_lim_inf)+length(y_r)+length(ceros_inferio);
    elemento_cero=0;
    for i=0:desplazamientos
        if (length(n)+i)<=length(vector_desplazado)
            if sum(vector_desplazado(1,i+1:length(n)+i)== y_r)== length(n)
                elemento_cero=i+1
            end
            resultado(i+1)= sum(x.*vector_desplazado(1,i+1:length(n)+i));
        end
    end
    resultado2=fliplr(resultado);
    vector_final1=fliplr((0:elemento_cero-1)*(-1));
    vector_final2=1:length(resultado2)-elemento_cero;
%     vector_final3=[vector_final1 vector_final2];
%     n1=find(vector_final3==n(1));
%     n2=find(vector_final3==n(numel(n)));
%     vector_temporal=vector_final3(n1:n2);
%     resultado_conv=resultado2(n1:n2);
    vector_temporal=[vector_final1 vector_final2];
    resultado_conv=resultado2;
end
