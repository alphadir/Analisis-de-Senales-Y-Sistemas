function dxt=Derivada(xt,dt)

%Esta es mi función derivada.

xt=[xt xt(length(xt))];

for i=2:length(xt)
    dxt(i-1)=(xt(i)-xt(i-1))/dt;
end