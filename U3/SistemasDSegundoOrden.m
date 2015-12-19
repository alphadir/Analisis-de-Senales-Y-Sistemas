clc
clear all
close all

n=-2:10;
yn(1)=0;
yn(2)=0;

for l=1:length(n)
    if n(l)>=0
        xn(l)=1;
    else 
        xn(l)=0;
    end
    
    if l>=3
        yn(l)=xn(l)+(3.*yn(l-1)+(4.*yn(l-2)));
    end
    
    if n(l)>=0
        yc(l)=((16/15).*(4).^n(l))+(1/10).*(-1).^n(1)-1/6;
    else
        yc(l)=0;
    end
    
end

hold on
stem(n,yc,'r*')
stem(n,yn)
hold off