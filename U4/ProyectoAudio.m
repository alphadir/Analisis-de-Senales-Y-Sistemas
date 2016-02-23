%Juarez Gonzalez Luis Angel%
%Flores Numa Jefte Allfadir%

clc
clear all
close all
[s fs]=wavread('hotline.wav'); % fS es la f de muestreo de la canción 

%%Separacion de los canales de la canción
canal_R=s(:,1);
canal_L=s(:,2);

%%Tiempo total de la canción
tiempo=size(s,1)/fs;
x=0:(1/fs):tiempo;
%%plot(x(2:end),canal_L),title('Grafica de la cancion')
xlim([0 tiempo])

%%Recorte de la canción a un minuto
tf=5000000:7650000;
s_r=canal_L(tf);
%sound(s_r,fs)

%%Transformada de Fourier
y=fft(s_r);

%%Hallar la Frecuencia
Y=abs(y);
figure, plot(Y)
N=size(Y);
N=N(1);
f=fs*(0:N-1)/N;    %eje X de frecuencias
figure, stem(f(1:N/2),Y(1:N/2)), title('Transformada Rapida de Fourier ');
xlabel('Frecuencia (MHz)');


%%Frecuencia
w=-length(y)/2:length(y)/2;

%%Filtro Pasa Bajas
for l=1:length(w)-1
    if w(l)>=-1000000 && w(l)<=1000000
        filtroPB(l)=1;
    else
        filtroPB(l)=0;
    end
end

YF=filtroPB.*y';
yf=ifft(YF');

%%Filtro Pasa Altas
for l=1:length(w)-1
    if w(l)<=-1000000 || w(l)>=1000000
        filtroPA(l)=1;
    else
        filtroPA(l)=0;
    end
end

YF2=filtroPA.*y';
yf2=ifft(YF2');

%%Filtro Pasa Bandas
for l=1:length(w)-1
    if (w(l)>=-1000000 && w(l)<=-500000 )|| (w(l)>=500000 && w(l)<=1000000)
        filtroPB2(l)=1;
    else
        filtroPB2(l)=0;
    end
end
YF3=filtroPB2.*y';
yf3=ifft(YF3');

%%Filtro Rechaza Bandas
for l=1:length(w)-1
    if (w(l)>=-1000000 && w(l)<=-500000) || (w(l)>=500000 && w(l)<=1000000)
        filtroRB(l)=0;
    else
        filtroRB(l)=1;
    end
end
YF4=filtroRB.*y';
yf4=ifft(YF4');

%%Canciones en el dominio del tiempo
figure,
subplot(3,2,1),plot(tf,s_r),title('Canción Original')
subplot(3,2,2),plot(yf),title('Canción filtro pasa bajas')
subplot(3,2,3),plot(yf2),title('Canción filtro pasa altas')
subplot(3,2,4),plot(yf3),title('Canción filtro pasa bandas')
subplot(3,2,5),plot(yf4),title('Canción filtro rechaza bandas')

%%Canciones en el dominio de Fourier
figure,
subplot(3,2,1),plot(w(2:end),Y),title('Canción Original')
subplot(3,2,2),plot(w(2:end),abs(YF')),title('Canción con filtro pasa bajas')
subplot(3,2,3),plot(w(2:end),abs(YF2')),title('Canción con filtro pasa altas')
subplot(3,2,4),plot(w(2:end),abs(YF3')),title('Canción con filtro pasa bandas')
subplot(3,2,5),plot(w(2:end),abs(YF4')),title('Canción con filtro rechaza bandas')

%Reproductor de las canciones ya con los filtros
disp('Seleccione que filtro desea escuchar:')
disp('1= Pasa Bajas')
disp('2= Pasa Altas')
disp('3= Pasa Bandas')
disp('4= Rechaza Bandas')
A=input('Introdusca su opción: ')
if A==1
    sound(yf,fs); %Pasa bajas
elseif A==2
    sound(yf2,fs); %Pasa altas
elseif A==3
    sound(yf3,fs); %Pasa bandas
elseif A==4
    sound(yf4,fs); %Rechaza bandas
end