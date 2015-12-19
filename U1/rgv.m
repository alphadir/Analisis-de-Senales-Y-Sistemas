clc
clear all 
close all

t0=-5;
dt=0.01;
tf=5;
m=1;
x=0;

while m~=0
    t=t0+x:dt:x+tf;
    x=x+dt;
    
        xt=sin(t);
        tm=t-5;
        xtd=sin(tm);
        yt=sin(xt).*xt;
        ytd=sin(xtd).*xtd;
        

plot(t,xt,'r');
hold on
plot(t,xtd,'g');
plot(t,yt,'b');
plot(t,ytd,'y');
hold off
grid on
pause(dt)
end

%for a=t0:dt:tf
%    t=t0:dt:a;
%    for n=1:length(t)
%    yt=sin(xt).*xt;
%    ytd=sin(xtd).*xtd;
%    end
%figure(2),
%plot(t,yt,'r');
%hold on
%plot(t,ytd,'g');
%hold off
%pause(dt)
%end