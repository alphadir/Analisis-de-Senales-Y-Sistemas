clc
clear all
close all

Re=[-10:0.1:10];
Im=[-10:0.1:10];
for m=1:length(Im)
    for n=1:length(Re)
        s=Re(n)+j*Im(m);
        tl(m,n)=(((2*s)+5)/((s.^2)+(5*s)));
    end
end
mesh(Re,Im,abs(tl))
xlabel('Parte real')
ylabel('Parte Imaginaria')
zlabel('Transformada de Laplace')