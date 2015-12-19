clc
clear all
close all

t0=-5;
dt=0.01;
tf=5;
t=t0:dt:tf;

for l=1:length(t)
    
   if t(l)>=-1&&t(l)<=1
       xt(l)=1;
   else
       xt(l)=0;
   end
   
end

w0=-100;
dw=0.01;
wf=-w0;

w=w0:dw:wf;

for l=1:length(w)
    Fw(l)=sum(xt.*exp(-1j.*w(l).*t).*dt);
end

figure, plot(w,abs(Fw))
figure, plot(w,angle(Fw))


for l=1:length(t)
    Ft(l)=(1/(2*pi)).*(sum(Fw.*exp(1j.*w.*t(l)).*dw));
end

figure, 
hold on
plot(t,xt,'r')
plot(t,Ft)