
function [Vi,VL,Ii,IL,Pi,PL]=Matriz(Zo,Zl,f,L,E_r,Vg,Zg,alpha) 
    lambda=3e8/(sqrt(E_r)*f);                                                                                      
    Ro_l=(Zl-Zo)/(Zl+Zo);
    Betta=2*pi/lambda;
    gamma=alpha+1i*Betta;

    Z=Zo*((1+Ro_l.*exp(2*gamma.*(-L)))/(1-Ro_l.*exp(2*gamma.*(-L))));

    VL=((Vg*Z)/(Zg+Z))*cosh(gamma*L)-Zo*((Vg)/(Zg+Z))*sinh(gamma*L);
    IL=(-1/Zo)*sinh(gamma*L)*((Vg*Z)/(Zg+Z))+((Vg)/(Zg+Z))*cosh(gamma*L);
    Vi=VL*cosh(gamma*L)+Zo*IL*sinh(gamma*L);
    Ii=(1/Zo)*sinh(gamma*L)*VL+IL*cosh(gamma*L);
    Pi=0.5*real(Vi*conj(Ii));
    PL=0.5*real(VL*conj(IL));
end