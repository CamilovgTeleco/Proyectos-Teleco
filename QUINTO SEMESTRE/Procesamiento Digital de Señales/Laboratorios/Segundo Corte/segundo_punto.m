n=-30:30;
% x=((0.5).^n).*escalon(n);
% y=escalon(n)-escalon(n-5);
% x=((0.25).^n).*escalon(n);
% y=escalon(n-1)-escalon(n-7);
x=4*((0.5).^n).*escalon(n);
y=escalon(n-2)-3*escalon(n-7)+2*escalon(n-11);
a=conv(x,y);
[b,c]=Convol_dis(n,x,y);
% subplot(3,1,1)
% stem(n,x)
% title('h[n]')
% subplot(3,1,2)
% stem(n,fliplr(y))
% title('X[n]')
% subplot(3,1,3)
stem(c,b)
title('h[n]*X[n]')
grid on



