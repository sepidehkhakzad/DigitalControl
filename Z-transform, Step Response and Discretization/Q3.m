
close all
clear all
clc

n=input('Enter Number of bits: ');
f=input('Enter Sampling Frequency: ');
d=input('Enter Signal Domain: ');

x=3*sin(2*pi*(0:(f-1))/f);
x(find(x>=d))=(d-eps);
xq=floor((x+d)*2^(n-1));%Signal is one of 2^n int values (0 to 2^n-1)
xq=xq/(2^(n-1));%Signal is from 0 to 2d (quantized)
xq=xq-d;%Shift signal down (rounding)
xe=x-xq;%Error
stem(x,'b');hold on;
stem(xq,'r');hold on;
stem(xe,'g');
legend('exact','quantized','error','Location','Southeast')
title(sprintf('Signal, Quantized signal and Error for %g bits, %g quantization levels',n,2^n));
hold off