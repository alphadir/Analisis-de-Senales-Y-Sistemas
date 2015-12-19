clc
clear all
close all

t=-5:0.001:5;

%tiempo modificado
%tm=-t;

%Escalamiento en el tiempo
%tm=-2*t;

%Desplazamiento en el tiempo
%tm=t+3;
tm=t-0;

for i=1:length(t)
    %if t(i)>=0&&t(i)<=2;  %Funcion original.
        %xt(i)=1.5*t(i);
    if tm(i)>=0&&tm(i)<=2; %Reflexion en el tiempo
        xt(i)=1;   %Reflexion en el tiempo
    else
        xt(i)=0;
    end
end


%plot(t,3*xt)         %Escalamiento de amplitud
%plot(t,xt+3)         %Desplazamiento de amplitud
plot(t,xt)
grid