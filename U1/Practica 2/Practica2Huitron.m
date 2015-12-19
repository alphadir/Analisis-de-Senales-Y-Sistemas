clc
clear all
close all

t=-5:0.01:5;

A=input('Ingrese el escalamiento de amplitud ');
d=input('Ingrese el desplazamiento de amplitud ');
c=input('Ingrese dato general ');
a=input('Ingrese el escalamiento y/o reflexión en el tiempo ');
b=input('Ingrese el desplasamiento en el tiempo ');

tm=(c*(a*t+b));

% for i=1:length(t)
% 
%     if t(i)>=0&&t(i)<=3;
%         xt(i)=(-(2/3)*t(i))+2;
%     else
%         xt(i)=0;
%     end
% end
% 
% for i=1:length(t)
% 
%     if tm(i)>=0&&tm(i)<=3;
%         xtm(i)=d+(A*(-(2/3)*tm(i))+2);
%     else
%         xtm(i)=d;
%     end
% end

% for i=1:length(t)
% 
%     if t(i)>=-2&&t(i)<=0;
%         xt(i)=t(i)+2;
%     elseif t(i)>0&&t(i)<=4
%         xt(i)=2;
%     else
%         xt(i)=0;
%     end
% end
% 
% for i=1:length(t)
% 
%     if tm(i)>=-2&&tm(i)<=0;
%         xtm(i)=A*(tm(i)+2)+d;
%     elseif tm(i)>0&&tm(i)<=4
%         xtm(i)=(A*2)+d;
%     else
%         xtm(i)=d;
%     end
% end

for i=1:length(t)
    
    if t(i)>=-pi&&t(i)<0;
        xt(i)=cos(t(i));
    elseif t(i)>=0&&t(i)<2
        xt(i)=(-t(i)+2).^2;
    else
        xt(i)=0;
    end
end

for i=1:length(t)
    
    if tm(i)>=-pi&&tm(i)<0;
        xtm(i)=A*cos(tm(i))+d;
    elseif tm(i)>=0&&tm(i)<2
        xtm(i)=A*((-tm(i)+2).^2)+d;
    else
        xtm(i)=d;
    end
end

figure, plot(t,xt, 'r', 'linewidth', 2)
grid

figure, plot(t,xtm, 'g', 'linewidth', 2)
grid