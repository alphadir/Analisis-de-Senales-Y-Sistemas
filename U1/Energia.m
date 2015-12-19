clc
clear all
close all

t0=-5;
dt=0.1;
tf=5;
m=1;

for a=t0:dt:tf
    t=t0:dt:a;
    for n=1:length(t)
        xt(n) = exp(1j*t(n));
    end

E(m)=sum((abs(xt).^2)*dt)
m=m+1;

hold on

plot(t,xt,'r')
plot(t,E,'g')

pause(dt)

end
