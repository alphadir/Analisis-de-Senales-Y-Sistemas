clc
clear all
close all

t0=-2*pi;
tf=2*pi;
dt=0.01;

t=t0:dt:tf;

x1t=sin(t);
x2t=sin(10*t);
x3t=sin(30*t);
x4t=sin(50*t);

xt=x1t+x2t+x3t+x4t;

plot(t,xt)

w0=-60;
wf=-w0;
dw=0.1;

w=w0:dw:wf;

for l=1:length(w)
    xw(l)=sum((xt.*exp(-1j.*w(l)*t)).*dt);
end

figure, plot(w,abs(xw))

for l=1:length(w)
    
    if w(l)>=-10 && w(l)<=10
        filtro(l)=1;
    else
        filtro(l)=0;
    end
    
end

figure, plot(w,abs(filtro))
filtrada=xw.*filtro;

for l=1:length(t)
    xtr(l)=(1/(2*pi)).*sum(filtro.*exp(1j.*w.*t(l)).*dw);
end

figure,
hold on
%plot(t,x3t+x4t)
plot(t,xtr,'k')
hold off