clc
clear all
close all

t0=0;
tf=2*pi;
dt=0.1;

t=0:dt:tf;

for i=1:length(t)
    T(i)=t(i);
    if t(i)>=0;
       %%xt(i)=1;
       xt(i)=t(i);
    else
       xt(i)=0;
    end
    %%xt(i)=sin(t(i));
    pause(dt)
    plot(T,xt)
end

%%xt=sin(t);

%%plot(t,xt)