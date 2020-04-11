close all 
clear all
clc

A=4;
DC=0.70;
T=1;
NC=10;
ts=0.01;
N=30;
xp=generate_pulses(A,DC,T,NC,ts);
xs=generate_sawtooth(A,T,NC,ts);
N=[1 2 3 5 8 10 15 22 35 45 50 75];

for k=1:length(N)
    yp=FS_pulse(N(k),A,DC,T,NC,ts);
    ys=FS_sawtooth(N(k),A,T,NC,ts);
    subplot(2,1,1)
    plot(xp(:,1),xp(:,2),'Linewidth',2)
    hold on
    plot(yp(:,1),yp(:,2),'r','Linewidth',2)
    %ylim([-0.4 1.4*A])
    title(sprintf('N = %.1f',N(k)));
    hold off
    subplot(2,1,2)
    plot(xs(:,1),xs(:,2),'Linewidth',2)
    hold on
    plot(ys(:,1),ys(:,2),'r','Linewidth',2)
    title(sprintf('N = %.1f',N(k)));
    hold off
    pause(1)
end

