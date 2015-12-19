%Programa Convolucion de vectores Flores Numa Jefte Allfadir%
clc
clear all
close all

pause on
x=[1 -2 3];
h=[0 0 1 1 1 1];

hi=fliplr(h);
k=20;

X=[x,zeros(1,40-length(x))];
X= X([ end-k+1:end 1:end-k ]);
H=[h,zeros(1,40-length(h))];
H= H([ end-k+1:end 1:end-k ]);

xn=-20:20-1;
Y=zeros(1,40);
p=zeros(1,40);

Hi=[hi,zeros(1,40-length(h))];

for i=1:40-length(h)
    cla(1)
    p=X.*Hi;
    Y(i+length(h)-1)=sum(p);
    hold on
    stem(xn,X,'r')
    stem(xn,Hi)
    stem(xn,Y,'g')
    Hi= Hi([ end 1:end-1 ]);
    pause(0.1)
end
pause off
salida=Y(abs(Y)>0)
salida2=conv(x,h)