clc
clear all
close all

t=0:0.1:30;

sys=tf([1 0],[1 3 10]);

xt=2.*sin(2.*t+deg2rad(70));
y=lsim(sys,xt,t);

yc=0.472.*sin(2.*t+2);

hold on
plot(t,y)
plot(t,yc,'r')