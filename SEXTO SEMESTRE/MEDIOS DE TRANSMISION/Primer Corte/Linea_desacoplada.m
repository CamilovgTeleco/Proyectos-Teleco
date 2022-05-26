function valor=Linea_desacoplada(A,Zo,Zl,f,Er,l,Alpha,opcion)
    Pl=(Zl-Zo)/(Zl+Zo);
    B=Pl*A;
    l=-abs(l);
    zt=l;
    zz=l:0.001;0;
    Lambda=3e8/(sqrt(Er)*f);
    w=2*pi*f;
    Betha=(2*pi)/Lambda;
    gamma=Alpha+1i*Betha;
    %primer valor a devolver.
    Z=Zo*((1+Pl.*exp(2*gamma*zz))./(1-Pl.*exp(2*gamma*zz)));
    Z_polar_magnitud=abs(Z);
    Z_polar_fase=rad2deg(angle(Z));
    Z_vector=[Z;Z_polar_magnitud;Z_polar_fase];
    %segundo valor a devolver.
    Vz=A*exp(-gamma.*zz)+B*(gamma.*zz);
    %tercer valor a devolver.
    Iz=(A*exp(-gamma.*zz)-B*(gamma.*zz))./Zo;
    
    if Alpha==0
        %cuarto valor a devolver.
        v_z_t=A*cos(w.*t-Betha.*zt)+B*cos(w.*t+Betha.*zt);
        %quinto valor a devolver.
        i_z_t=(1/Zo).*(A*cos(w.*t-Betha.*zt)-B*cos(w.*t+Betha.*zt));
    else
        %cuarto valor a devolver.
        v_z_t=A*cos(w.*t-Betha.*zt).*exp(-Alpha*zt)+B*cos(w.*t+Betha.*zt).*exp(Alpha*zt);
        %quinto valor a devolver.
        i_z_t=(1/Zo).*(A*cos(w.*t-Betha.*zt).*exp(-Alpha*zt)-B*cos(w.*t+Betha.*zt)).*exp(Alpha*zt);
    end
    
    if opcion==1
        valor = Z_vector;
    elseif opcion == 2
        valor = Vz;
    elseif opcion == 3
        valor = Iz;
    elseif opcion == 4
        valor = v_z_t;
    elseif opcion == 5
        valor = i_z_t;
    else 
        valor = 0;
    end
end