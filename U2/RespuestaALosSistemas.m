clc
clear all
close all

dt=0.01;
t=0:dt:30;
%Ft=ones(1,length(t));
%Ft=exp(-0.1.*t);
Ft=sin(t);
m=1;
b=0.1;
k=1;

num=[1];
den=[m b k];

sys=tf(num,den);

y=lsim(sys,Ft,t);

hold on
plot(t,y,'r')
plot(t,Ft,'g')
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

yc=1+(0.17.*exp(-2.61.*t))-(1.18*exp(-0.38.*t));

figure
plot(t,yc)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

xpp(1)=0;
xp(1)=0;
x(1)=0;

for n=2:length(t)
    xpp(n)=(Ft(n)-b.*xp(n-1)-k.*x(n-1))/m;
    xp(n)=sum(xpp.*dt);
    x(n)=sum(xp.*dt);
end

figure
plot(t,x)