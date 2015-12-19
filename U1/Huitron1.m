clc
clear all
close all

t=-20:0.1:20;
%xt=sin(pi*t)+sin(2*t);

%xt=(cos(2*t).^2);
%xt2=(1/2)+0.5*cos(4*t);

xt1=cos((2/3)*pi*t+1)
xt2=cos((1/2)*pi*t)

hold on
%plot(t,xt)
%plot(t,xt2, 'rd')
%hold off

plot(t,xt1)
plot(t,xt2, 'r')
plot(t, xt1+xt2, 'k')
hold off
grid