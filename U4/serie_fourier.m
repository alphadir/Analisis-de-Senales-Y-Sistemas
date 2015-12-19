clc
close all
clear all

t0=-10;
dt=0.01;
tf=10;
t=t0:dt:tf;

for l=1:length(t)
    if t(l)>=0&&t(l)<=2*pi
        xt(l)=sin(t(l))+2*sin(4*t(l))+1.5*sin(15*t(l));
    else
        xt(l)=0;
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
T=2*pi;
w0=2*pi*(1/T);

a0=(1/T)*sum(xt.*dt)
k=3;

for k=1:100

    cla(1)
ak(k)=(2/T)*sum(xt.*cos(k*w0.*t).*dt);
bk(k)=(2/T)*sum(xt.*sin(k*w0.*t).*dt);
K(k)=k;

for l=1:length(t)
    
    xts(l)=a0+sum(ak.*cos(K.*w0.*t(l)))+sum(bk.*sin(K.*w0.*t(l)));
end
hold on
plot(t,xt,'g')
plot(t,xts)
hold off
title(num2str(k))
pause(.1)

end

[K' ak' bk']
    
figure,stem(w0*K,ak)
figure,stem(w0*K,bk)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

