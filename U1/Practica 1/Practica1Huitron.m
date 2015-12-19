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

for i=1:length(t)

    if t(i)>=0&&t(i)<=2;
        xt(i)=1.5*t(i);
    else
        xt(i)=0;
    end
end

for i=1:length(t)

    if tm(i)>=0&&tm(i)<=2;
        xtm(i)=d+(A*(1.5*tm(i)));
    else
        xtm(i)=d;
    end
end

plot(t,xt, 'r', 'linewidth', 2)

hold on
plot(t,xtm, 'g', 'linewidth', 2)
grid
hold off