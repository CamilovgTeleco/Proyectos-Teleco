n=-50:50;
x=rampa(n+20).*(escalon(n+20)-escalon(n+9))+rampa(-n+20).*(escalon(n-10)-escalon(n-21));
stem(n,x)
axis([-30 30 0 10])
ylabel('X[n]')
xlabel('n')
grid on