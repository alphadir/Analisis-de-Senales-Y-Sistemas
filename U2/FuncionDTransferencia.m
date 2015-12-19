clc 
close all
clear all

t=0:0.01:100;

num=[1]; 
den=[1 0 1]; 

sys=tf(num,den);
ju=step(sys,t);
%ju=impulse(sys,t);
y=lsim(sys,ju,t);
hold on
plot(t,y,'r')
plot(t,ju,'k')
hold off