clc
clear all
close all

t0=0;
dt=0.001;
tf=5;

t=t0:dt:tf;

xt=sin(t);
%xt=ones(1,length(t));

dxt=Derivada(xt,dt);
intxt=Integracion(xt,dt);

% for i=1:length(xt)
%     A(i)=sum(xt(1:i).*dt);
% end

% xt=[xt xt(length(xt))];
% 
% for i=2:length(xt)
%     dxt(i-1)=(xt(i)-xt(i-1))/dt;
% end
%xt=xt(1:length(xt)-1);

hold on
plot(t,xt)
plot(t,intxt, 'r')
plot(t,dxt, 'k')