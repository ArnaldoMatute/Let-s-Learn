function xt=generate_sawtooth(A,T,NC,ts)

      
    t_=0:ts:T-ts;
    c=(2*A*t_/T)-A;
    x=c; 
    t=0:ts:NC*T-ts;
    for k=1:NC-1
        x=cat(2,x,c);
    end
    
xt=[t',x'];

end