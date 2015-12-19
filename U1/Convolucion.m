clc
clear all
close all

t=0:0.01:5;

%Convolucion 
yt=t.*exp(-t);
plot(t,yt)

% y=conv(exp(-t),exp(-2*t));
% plot(y)