clc 
clear all
close all

t=-5:0.01:5;

for n=1:length(t)
    if t(n)>=-5
       %xt(n)=rand;
       %xt(n)=1 %Con la condición de t(n)>=1&&t(n)<=2
       xt(n)=sin(t(n))
       %xt(n)=exp(i*t(n));
    else
       xt(n)=0; 
    end 
end 

plot(t,xt), title('Original')

xtr=fliplr(xt); 

figure, plot(t,xtr), title('Rotada')

xp=(xt+xtr)/2;
figure, plot(t,xp), title('Par')

xi=(xt-xtr)/2;
figure, plot(t,xi),title('Impar')

figure, plot(t,xp+xi),title('Reconstruida')