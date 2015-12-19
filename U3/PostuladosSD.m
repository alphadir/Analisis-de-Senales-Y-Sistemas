clc
clear all
close all

n=0:40;

w=0.5*pi;

for fa=-pi:0.01:pi;
    cla(1)
    xn=sin(w.*n+fa);
    xn2=cos(11.3*pi.*n+pi);
    stem(n,xn)
    pause(0.02)
end