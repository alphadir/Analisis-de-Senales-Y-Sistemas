clc
clear all
close all

n=-2:20;
y(1)=0;
y(2)=0;

for l=1:length(n)
    if n(l)>=0
        xn(l)=(0.5).^n(l);
    else
        xn(l)=0;
    end
    
    if l>=3
        y(l)=xn(l)+xn(l-1)+y(l-1)-0.5.*y(l-2);
    end
    
    if n(l)>=0
        ync(l)=3*(0.5.^n(l))+(-1-2j)*((0.5+0.5j).^n(l))+(-1+2j)*((0.5-0.5j).^n(l));
    else
        ync(l)=0;
    end
    
end

hold on
grid on
stem(n,ync,'r*')
stem(n,y)
hold off