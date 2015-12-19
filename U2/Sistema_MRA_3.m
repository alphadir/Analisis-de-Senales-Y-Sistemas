clc
clear all;
close all;
dt=0.01;
t=0:dt:30;

hold on
for w=0:0.1:30
    
    cla(1)
    xt=sin(w.*t);

    m=1;
    b=3;
    k=1;

    sys=tf([1],[m b k]);
    y=lsim(sys,xt,t);
    plot(t,y);
    plot(t,xt,'r')
    pause(0.1)
end