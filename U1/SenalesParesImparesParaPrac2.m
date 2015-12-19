clc 
clear all
close all

t=-5:0.01:5;

% for n=1:length(t)
%     if t(n)>=-5
%        %xt(n)=rand;
%        %xt(n)=1 %Con la condición de t(n)>=1&&t(n)<=2
%        %xt(n)=sin(t(n));
%        xt(n)=exp(i*t(n));
%     else
%        xt(n)=0;
%     end
% end

% for n=1:length(t)
%     if t(n)>=0&&t(n)<=3
%        xt(n)=-(2/3)*t(n)+2;
%     else
%        xt(n)=0; 
%     end
% end

% for n=1:length(t)
% 
%     if t(n)>=-2&&t(n)<=0;
%         xt(n)=t(n)+2;
%     elseif t(n)>0&&t(n)<=4
%         xt(n)=2;
%     else
%         xt(n)=0;            
%     end
% end

for n=1:length(t)

    if t(n)>=-2&&t(n)<=0;
        xt(n)=2;
    elseif t(n)>0&&t(n)<=2
        xt(n)=t(n)-2;
    else
        xt(n)=0;
    end
end

plot(t,xt), title('Original')
grid

xtr=fliplr(xt); 

figure, plot(t,xtr), title('Rotada')
grid

xp=(xt+xtr)/2;
figure, plot(t,xp), title('Par')
grid

xi=(xt-xtr)/2;
figure, plot(t,xi),title('Impar')
grid

figure, plot(t,xp+xi),title('Reconstruida')
grid