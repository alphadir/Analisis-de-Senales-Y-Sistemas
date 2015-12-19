clc
clear all
close all


t0=-5;
dt=0.01;
tf=5;

t=t0:dt:tf;

fs=input('Ingrese la frecuencia del muestreo fs: ');
A=input('Ingrese A: ');
a=input('Ingrese a: ');
b=input('Ingrese b: ');
c=input('Ingrese c: ');
d=input('Ingrese d: ');

n=0:((tf-t0)*fs);

nm=c.*((a^-1).*n+b);

for i=1:length(n)
    if n(i)>=0
        xn(i)=exp(-n(i));
    else
        xn(i)=0;
    end
end

for i=1:length(nm)
     if nm(i)<=0
        xnm(i)=exp(-n(i));
    else
        xnm(i)=0;
    end
end
stem(n/fs,xn)
figure, stem(nm/fs,A.*xnm+d,'r')