clc
clear all;
close all;
dt=0.01;
t=0:dt:30;
hold on
for b=5:-0.1:-5
m=1;
k=1;
cla()
sys=tf([1],[m b k]);
bode(sys)
title(num2str(b))
pause(0.1)
end