
clc
close all
clear all
syms 1
num=[3];
den=[1 3];
sys=tf(num,den,'IODelay',1)
subplot(2,3,1)
t1=0:1.5:10;
step(sys,t1)
title('t=1.5')
subplot(2,3,2)
t2=0:1:10;
step(sys,t2)
title('t=1')
subplot(2,3,3)
t3=0:0.7:10;
step(sys,t3)
title('t=0.7')
subplot(2,3,4)
t4=0:0.5:10;
step(sys,t4)
title('t=0.5')
subplot(2,3,5)
t5=0:0.1:10;
step(sys,t5)
title('t=0.1')