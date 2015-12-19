clc
clear all
close all

n=-10:10;

for l=1:length(n)
    if n(l)>=0;
        xn(l)=2.*(3.^n(l));
    else
        xn(l)=0;
    end
end
stem(n,xn)
REAL=[-5:0.1:5];
IMA=[-5:0.1:5];

for y=1:length(IMA)
    for x=1:length(REAL)
        z=REAL(x)+1j.*IMA(y);
        TZ(x,y)=sum(xn.*(z.^(-n)));
    end
end
figure, mesh(REAL,IMA,abs(TZ))
xlabel('Real')
ylabel('Imaginaria')
zlabel('Transformada Z (modulo)')
axis([-5 5 -5 5 -10 10])