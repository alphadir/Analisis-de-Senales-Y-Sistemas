clc
clear all
close all

j=1;

figure
for t=-5:0.01:5
    
cla(1)
    
dtao=0.01;
tao=-5:dtao:5;
taom=t-tao;



for i=1:length(tao)
    
    if tao(i)>=0&&tao(i)<3
        x1tao(i)=tao(i);
%     elseif tao(i)>=1&&tao(i)<2
%         x1tao(i)=-1;
%     elseif tao(i)>=2&&tao(i)<3
%         x1tao(i)=-tao(i)+3;
    else
        x1tao(i)=0; 
    end
end

for i=1:length(taom)
    
    if taom(i)>=-1&&taom(i)<1
         x2tao(i)=1;
%     elseif taom(i)>=0&&taom(i)<1
%         x2tao(i)=-taom(i)+1;
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
plot(tao,x2tao, 'r')
plot(T,C, 'k')
hold off

pause(.001)

end