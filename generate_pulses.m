function xt=generate_pulses(A,DC,T,NC,ts)

    x=[];  
    t=0:ts:NC*T-ts;
    c=[ones(1,uint16(DC*T/ts)) zeros(1,uint16(T*(1-DC)/ts))];

    for k=1:NC
        x=cat(2,x,c);
    end
    
xt=[t',(A*x)'];

end