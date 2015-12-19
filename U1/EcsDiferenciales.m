clc
clear all
close all

t0=0;
dt=0.01;
tf=10;

t=t0:dt:tf;

for i=1:length(t)

    if t(i)>=0
        xt(i)=4*(exp(-3*t(i)));
    else
        xt(i)=0;
    end
    
end

y(1)=0;
yp(1)=0;
ypp(1)=0;

for i=1:length(t)
    ypp(i+1)=xt(i)-2*y(i)-3*yp(i);
    yp(i+1)=sum(ypp*dt);
    y(i+1)=sum(yp.*dt);
end

y=y(1,1:length(y)-1);

% yc=-0.5.*exp(-2*t)+0.5;
% yc=-0.75*exp(-2*t)+0.25*cos(2*t)+0.25*sin(2*t);
yc=-4*exp(-2*t)+2*exp(-t)+2*exp(-3*t);

hold on
grid on
plot(t,y, 'r+')
plot(t,xt)
plot(t,yc, 'g')
hold off