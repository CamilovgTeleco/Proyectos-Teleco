%Primer punto
% Fo=15;
% To=1/Fo;
% t=-To/2:To/100:To/2;
% x=2+10*cos(2*pi*Fo.*t)+25*cos(2*pi*Fo*2.*t)+cos(2*pi*Fo*3.*t)+20*cos(2*pi*Fo*4.*t);
% plot(t,x)
% grid on

%Tercer punto a
Fo=1e6;
To=1/Fo;
n=-2000:2000;
t=-To/2:To/2000:To/2;
d =0.5; 
A=1;
sig=A*d*sinc(n*d);
x=0;
m=1;

for k=-2000:2000
    x= x + sig(m).*exp(((j*2*pi*k.*t)./To));
    m=m+1;
end
subplot(1,3,1)
plot(t,x) 
title('Punto A')
xlabel('Time (s)') 
ylabel('Amplitude')
subplot(1,3,2)
%Tercer punto b
c=find(n==0);
x=0;
for k=-4:4
    x= x + sig(c+k).*exp(((j*2*pi*k.*t)./To));
end
plot(t,x) 
title('Punto B')
xlabel('Time (s)') 
ylabel('Amplitude')
grid on
subplot(1,3,3)
vector_vacio2=[];
m=1;
sig2=sig;
for i=c:numel(n)
    if i~=c
        if mod(i,2)==0
            sig2(i) = sig2(i)*2;
            vector_vacio2(m) = 10*log10((((sig2(i)).^2)/100)/1e-3);
        else
             vector_vacio2(m)=0;
        end
        m = m+1;
    elseif i==c
         vector_vacio2(m) = 10*log10((((sig2(i)).^2)/100)/1e-3);
        m = m+1;
    end
end

for i=1:numel(vector_vacio2)
    if mod(i,2)==0 | i==1
        vector_vacio2(i)= vector_vacio2(i)-3;
    else
        vector_vacio2(i)=0;
    end
end
subplot(1,3,3)
m=(c:numel(n));
stem(m,vector_vacio2)
grid on
axis([2000 2005 -7 4])

