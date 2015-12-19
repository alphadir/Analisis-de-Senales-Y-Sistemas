clc
clear all
close all

n=-1:10;
yn(1)=0;

for l=1:length(n)
    if n(l)>=0
        xn(l)=1;
    else 
        xn(l)=0;
    end
    
    if l>=2
        yn(l)=xn(l)-(0.5*yn(l-1));
    end
    
    if n(l)>=0
        yc(l)=((1/3).*(-0.5).^n(l))+(2/3);
    else
        yc(l)=0;
    end
    
end

hold on
stem(n,yc,'r*')
stem(n,yn)
hold off