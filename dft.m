clear all
close all
clc

omg=0:0.01:pi;
Ht=(sin((5/2)*omg)./sin(omg/2))...
    .*exp(-j*2*omg);

for i=5:5:95
    x=[1 1 1 1 1 zeros(1,i)];
    N=length(x);
    Hc=fft(x);
    k=0:(2*pi/N):2*pi-(2*pi/N);
    subplot(3,1,1)
    stem(0:N-1,x)
    title(sprintf('Zero padded signal for N = %.1f',i+5))
    ylabel('Amplitude')
    xlabel('Samples')
    subplot(3,1,2)
    plot(omg,abs(Ht))
    hold on
    stem(k(1:length(k)/2),abs(Hc(1:length(k)/2)),'r')
    title(sprintf('Magnitude response for N = %.1f',i+5))
    ylabel('Magnitude')
    xlabel('Frecuency [rad/sample]')
    subplot(3,1,3)
    plot(omg,angle(Ht))
    hold on
    stem(k(1:length(k)/2),angle(Hc(1:length(k)/2)),'r')
    title(sprintf('Phase response for N = %.1f',i+5))
    ylabel('Phase [radians]')
    xlabel('Frecuency [rad/sample]')
    pause(2)
end