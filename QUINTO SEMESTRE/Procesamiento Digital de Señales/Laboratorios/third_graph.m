n=-50:50;
x=rampa(-n-10).*(escalon(n+20)-escalon(n+10))-rampa(n+10).*(escalon(n+10)-escalon(n-1))-rampa(-n+10).*(escalon(n-1)-escalon(n-11))+rampa(n-10).*(escalon(n-10)-escalon(n-21));
stem(n,x)
axis([-30 30 -12 10])
ylabel('X[n]')
xlabel('n')
grid on