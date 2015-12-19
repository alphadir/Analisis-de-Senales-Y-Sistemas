clc
clear all
close all

h=1;

for n=-10:10;
    cla(1)
    k=-10:1:10;
    km=n-k;

for l=1:length(k)
    if k(l)>=0
        x1k(l)=2.*((1/2).^k(l));
    else
        x1k(l)=0;
    end
end

for l=1:length(km)
    if km(l)>=0
        x2k(l)=1;
    else
        x2k(l)=0;
    end
end

convol(h)=sum(x1k.*x2k);
N(h)=n;
h=h+1;

hold on
stem(k,x1k)
stem(k,x2k,'r')
stem(N,convol,'g')
hold off
pause(.5)
end
