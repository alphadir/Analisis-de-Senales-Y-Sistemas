clc
clear all
close all

t=-5:0.01:5;

for i=1:length(t)
   if t(i)>=-1
       x1t(i)=(t(i)+1)^2;
   else
       x1t(i)=0;
   end
   
   if t(i)>=2
       x2t(i)=-1.*((t(i)-2)^2);
   else
       x2t(i)=0;
   end
   
   if t(i)>=2
       x3t(i)=-3.*((t(i)-2));
   else
       x3t(i)=0;
   end
   
   if t(i)>=1
       x4t(i)=-(t(i)-1);
   else
       x4t(i)=0;
   end

   if t(i)>=4
       x5t(i)=(t(i)-4).^2;
   else
       x5t(i)=0;
   end

   if t(i)>=1
       x6t(i)=3.*(t(i)-4);
   else
       x6t(i)=0;
   end   
end

hold on
grid on
plot(t,x1t,'b')
plot(t,x2t,'r')
plot(t,x3t,'g')
plot(t,x4t,'y')
plot(t,x1t+x2t+x3t+x4t,'k')
hold off