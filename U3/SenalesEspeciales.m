clc
clear all
close all

n=-10:10;
a=-2;

for l=1:length(n)
    if n(l)>=0
        xn(l)=a.^n(l);
    else
        xn(l)=0;
    end
end

stem(n,xn)

E=sum(abs(xn).^2)

xp=0.5.*(xn+fliplr(xn)); figure, stem(n,xp)
xi=0.5.*(xn-fliplr(xn)); figure, stem(n,xi)