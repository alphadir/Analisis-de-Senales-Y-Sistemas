clc
clear all
close all

n=-10:10;

yn(1)=0;

for l=1:length(n)
cla(1)
    if n(l)>=0
        xn(l)=n(l);
    else
        xn(l)=0;
    end
    
    if l>=2
        yn(l)=0.5*yn(l-1)+xn(l);
    end
    
N(l)=n(l);
    
hold on
stem(N,xn)
stem(N,yn,'r')
hold off
pause(0.3)
end

