clc
clear all
close all

REAL=[-10:0.1:10];
IMA=[-10:0.1:10];

for k=-5:0.1:5
    cla(1)
        
for y=1:length(IMA)
    for x=1:length(REAL)
        z=REAL(x)+1j.*IMA(y);
        TZ(x,y)=z^-k;
    end 
end

mesh(REAL, IMA, abs(TZ))
xlabel('Parte Real')
ylabel('Parte Imaginaria')
zlabel('Transformada Z')
title(num2str(k))
axis([-10 10 -10 10 -1000 1000]);
pause(0.1)
end