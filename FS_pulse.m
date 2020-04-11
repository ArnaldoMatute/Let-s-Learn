function y=FS_pulse(N,A,DC,T,NC,ts)

t=0:ts:NC*T-ts;
a0_2=DC*A;
serie = a0_2*(ones(1,length(t)));
for n=1:N
    an=(A/(pi*n))*sin(2*pi*n*DC);
    bn=(A/(pi*n))*(1-cos(2*pi*n*DC)); 
    serie = serie + an*cos(2*pi*n*t/T)+ bn*sin(2*pi*n*t/T); 
end
y=[t' serie'];
end