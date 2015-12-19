clc
clear all
close all

f1=1;
fs=3;

t0=0;
dt=0.001;
tf=7;

t=t0:dt:tf;

xt=sin(2*pi*f1*t);


grid on

n=0:floor((tf-t0).*fs);
xn=sin(2*pi*(f1/fs)*n);
hold on
plot(t,xt)
stem(n/fs,xn,'r')
hold off