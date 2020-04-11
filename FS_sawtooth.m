function y=FS_sawtooth(N,A,T,NC,ts)

t=0:ts:NC*T-ts;

serie = zeros(1,length(t));
for n=1:N
    bn=(-2*A/(pi*n)); 
    serie = serie + bn*sin(2*pi*n*t/T); 
end
y=[t' serie'];
end