clear all
close all
clc

load('signal.mat')
load('Filtering.mat')
N=length(x); % Original signal length
Nf=1024;     % Number power of 2 to zero-pad with 
n=0:Nf-1;    % Time vector

x=[x zeros(1,Nf-N);fft(x,Nf)]; % Zero-padding.

for type=1:2 % 1 -> FIR Filtering. 2 -> IIR Filtering. 
    for order=1:5 
        %Order 1: 2nd Order.
        %Order 2: 4th Order.
        %Order 3: 8th Order.
        %Order 4: 16th Order.
        %Order 5: 64th Order.
        %Original Signal is processed with corresponding filter
        xf{type,1}(order,:)=filter(Filtros{type,order}.filtro,x(1,:));
        %Filtered signals spectra are obtained.
        xf{type,2}(order,:)=fft(xf{type}(order,:));
    end
end

%Time plot until:
u=200;

for order=1:5 
    
    subplot(3,2,1)
    stem(n(1:u),x(1,1:u))
    ylabel('Original Signal')
    xlabel('Samples')
    subplot(3,2,2)
    k=0:1/Nf:1-1/Nf;
    stem(k(1:length(k)/2),abs(x(2,1:length(k)/2)),'r')
    ylabel('Original Signal')
    xlabel('Normalized Frecuency [1/sample]')
    
    subplot(3,2,3)
    stem(n(1:u),xf{1,1}(order,1:u))
    title(sprintf('ORDER = %.1f',Filtros{1,order}.orden));
    ylabel('FIR Filtered Signal')
    xlabel('Samples')
    
    subplot(3,2,4)
    stem(k(1:length(k)/2),abs(xf{1,2}(order,1:length(k)/2)),'r')
    ylabel('Spectrum - Original Signal')
    xlabel('Frecuency [rad/sample]')
    
    subplot(3,2,5)
    stem(n(1:u),xf{2,1}(order,1:u))
    title(sprintf('ORDER = %.1f',Filtros{1,order}.orden));
    ylabel('IIR Filtered Signal')
    xlabel('Samples')
    
    subplot(3,2,6)
    stem(k(1:length(k)/2),abs(xf{2,2}(order,1:length(k)/2)),'r')
    ylabel('Spectrum - Original Signal')
    xlabel('Frecuency [rad/sample]')
     
    pause(2)
end