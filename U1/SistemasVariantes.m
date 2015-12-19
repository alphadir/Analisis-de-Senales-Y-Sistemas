clc
clear all 
close all
dt=0.01
t=-10:dt:10;
tm=t-1;

x=exp(2.*(sin(3*t)));
x2=exp(2.*(sin(3*tm)));

% x=sin(3*t)+sin(3*(-t));
% x2=sin(3*tm)+sin(3*(-tm));

figure
hold on
plot(t,x,'k')
plot(t,x2, 'r')
hold off