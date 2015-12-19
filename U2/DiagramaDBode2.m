clc
clear all
close all

bode(tf([1],[1 0 1]))
l=1;

for w=0:0.01:100
    s=j.*w;
    
    H=1/(s.^2+0.*s+1);
    M(l)=20.*log10(abs(H));
    F(l)=rad2deg(angle(H));
    l=l+1;
end

w=0:0.01:100;
figure,
subplot(2,1,1),
semilogx(w,M), title('Magnitud')
subplot(2,1,2),
semilogx(w,F), title('Fase')