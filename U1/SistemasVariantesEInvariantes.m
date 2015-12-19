clc
clear all
close all

t=-5:0.01:5;

xt=sin(t);

%Valor de escalamiento en el tiempo
des=1;

if des>=0
des2=-5:0.1:des;
else
des2=des:0.1:5;
end

tm=t+(des);

if des>=0
%grafica invariante
   for  a=0:length(des2)
        xtd=sin(t+a);
        hold on
        grid on
        plot(t,xt,'b')
        plot(t,xtd,'k')
        hold off
        pause(0.2);
        cla()
   end
else    
  for  a=0:length(des2)
       xtd=sin(t-a);
       hold on
       grid on
       plot(t,xt,'b')
       plot(t,xtd,'k')
       hold off
       pause(0.2);
       cla()
  end 
end 
   
xtd=sin(tm);
hold on
plot(t,xt,'b')
plot(t,xtd,'k')
hold off

%grafica variante 
pause(1);
yt=sin(xt).*xt;
if des>=0
   for a=0:length(des2)
       xtd=sin(t+a);
       ytd=sin(xtd).*xtd;
       hold on
       grid on
       plot(t,yt,'b')
       plot(t,ytd,'k')
       hold off
       pause(0.2);
       cla()
    
   end
else
    for a=0:length(des2)
        xtd=sin(t-a);
        ytd=sin(xtd).*xtd;
        hold on
        grid on
        plot(t,yt,'b')
        plot(t,ytd,'k')
        hold off
        pause(0.2);
        cla()
   end
end 
   
yt=sin(xt).*xt;
ytd=sin(xtd).*xtd;
hold on
plot(t,yt,'b')
plot(t,ytd,'k')
hold off