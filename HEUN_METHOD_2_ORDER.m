clear all
close all
clc

ts=0.01;
tfinal=4;
%Solving X''+4*pi^2=0 with HEUN METHOD

%Condiciones Iniciales - Initial Conditions
x=1;
y=0;
dx=y;
dy=-(4*pi^2)*x;
%%%%%%%
tic
for t=ts:ts:tfinal
    
    x_=x(end)+ts*dx(end);
    y_=y(end)+ts*dy(end);
    dx_=y_;
    dy_=-(4*pi^2)*x_;
    
    x=[x x(end)+ts*0.5*(dx(end)+dx_)];
    y=[y y(end)+ts*0.5*(dy(end)+dy_)];
    dx=[dx y(end)];
    dy=[dy -(4*pi^2)*x(end)];
end
toc
plot(0:ts:tfinal,x,'r')
xlabel('t')
ylabel('X(t): Solution')