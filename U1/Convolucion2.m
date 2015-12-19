clc
clear all
close all

j=1;

figure,
for t=0:0.01:10
    
cla(1)
    
dtao=0.01;
tao=0:dtao:10;
taom=t-tao;



for i=1:length(tao)
        
      if tao(i)>=0
        x1tao(i)=sin(tao(i));
    else
        x1tao(i)=0;    
    end
end

plot(tao,x1tao)

for i=1:length(taom)
    
    if taom(i)>=0
        x2tao(i)=(-0.44.*exp(-2.61.*(taom(i)))+(0.44.*exp(-0.38.*taom(i))));
    else
        x2tao(i)=0;
    
    end
end

C(j)=sum((x1tao.*x2tao).*dtao);
T(j)=t;
j=j+1;

hold on
grid on
plot(tao,x1tao)
plot(T,C, '--k')
plot(tao,x2tao, 'r')
hold off

pause(0.001)

end