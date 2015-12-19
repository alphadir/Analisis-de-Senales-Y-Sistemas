clc
clear all
close all

t=-5:0.01:5;
for i=1:length(t)
   
    if t(i)>=0 %%&& t(i)<=1
        xt(i)=t(i);
    else
        xt(i)=0;
    end
        
end
plot (t,xt)

xp=cos(10*t);

xn=xt.*xp;
figure, plot(t,xn)

dxn=xn.*cos(10*t);
figure, plot(t,dxn)