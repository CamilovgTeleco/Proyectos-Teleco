n=-50:50;
x=escalon(n+10).*rampa(-n)+(escalon(n)-escalon(n-11)).*rampa(n);
stem(n,x)
axis([-20 20 0 10])
ylabel('X[n]')
xlabel('n')
grid on
