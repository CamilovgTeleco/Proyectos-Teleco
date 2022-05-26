fs=8e3;
n=0:79;
x=2+2.*cos((2*pi*100*(1/fs)).*n);
AD8=round(x.*(255/5));
AD10=round(x.*(1023/5));
AD12=round(x.*(4095/5));

n=transpose(n);
Xm=transpose(x);
AD8=transpose(AD8);
AD10=transpose(AD10);
AD12=transpose(AD12);

table(n,Xm,AD8,AD10,AD12)