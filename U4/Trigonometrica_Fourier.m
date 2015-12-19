clc
clear all
close all

t0=-5;
dt=0.01;
tf=5;

t=t0:dt:tf;

for l=1:length(t)
    
    if t(l)>=-1&&t(l)<=1
        xt(l)=t(l);
    else
        xt(l)=0;
        
    end
    
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

T=2;
w0=(2*pi)*(1/T);


for k=1:100

cla(1)
a0=(1/T)*sum(xt.*dt);
ak(k)=(2/T)*sum(xt.*cos(k*w0.*t).*dt);
bk(k)=(2/T)*sum(xt.*sin(k*w0.*t).*dt);
K(k)=k;

for l=1:length(t)
    
    xts(l)=a0+sum(ak.*cos(K.*w0.*t(l))+bk.*sin(K.*w0.*t(l)));
    
end

hold on
plot(t,xt,'r')
plot(t,xts)
title(num2str(k))
pause(0.1)

end

[K' ak' bk']

figure, stem(w0.*K,ak)
figure, stem(w0.*K,bk)