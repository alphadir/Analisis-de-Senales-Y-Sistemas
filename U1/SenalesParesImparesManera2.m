clc 
clear all
close all
t=-5:0.01:5;

for n=1:length(t)
    if t(n)>=-1&&t(n)<0
       %xt(n)=rand;
       %xt(n)=1 %Con la condición de t(n)>=1&&t(n)<=2
       xt(n)=4*t(n)+4;
    elseif t(n)>=0&&t(n)<2
       xt(n)=-2*t(n)+4;
    else
       xt(n)=0; 
    end 
end 
subplot(2,3,1)
plot(t,xt, 'r'), title('Original')

xtr=fliplr(xt); 

subplot(2,3,2)
plot(t,xtr, 'g'), title('Rotada')

xp=(xt+xtr)/2;

subplot(2,3,3)
plot(t,xp, 'y'), title('Par')

xi=(xt-xtr)/2;

subplot(2,3,4)
plot(t,xi, 'm'),title('Impar')

subplot(2,3,5)
plot(t,xp+xi, 'k'),title('Reconstruida')