clc
clear all
close all

t0=-10;
dt=0.0001;
tf=10;

t=t0:dt:tf;

for l=1:length(t)
    
    if t(l)>=0&&t(l)<=2*pi
        xt(l)=cos(t(l))+2.*cos(4.*t(l))+3.*cos(8.*t(l));
    else
        xt(l)=0;
    end
    
end

T=2*pi;
w0=(2*pi)/T;

for coef=0:10

cla(1)
k=-coef:1:coef;

for l=1:length(k)

ck(l)=(1/T).*sum(xt.*exp(-1j*k(l)*w0.*t)*dt);

end

for l=1:length(t)
    xts(l)=sum(ck.*exp(1j.*k.*w0.*t(l)));
end

hold on
plot(t,xt)
plot(t,real(xts),'r')
title(num2str(coef))
pause(0.01)
end

[k' ck']

figure, stem(k*w0,abs(ck))     %espectro de magnitud
figure, stem(k*w0,angle(ck))   %espectro de fase

