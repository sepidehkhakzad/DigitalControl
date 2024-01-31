% clc
% clear all
% close all

A=[0 1 0 0
    -14/15 -3/4 14/15 3/4
    0 0 0 1
    7/5 9/8 -101/40 -101/40];
B=[0
    2/3
    0
    0];
C=[0 0 1 0];
D=0;
[num,den]=ss2tf(A,B,C,D);
sys=tf(num,den,'InputDelay', 1)
sysd = c2d(sys,0.1,'zoh')
figure (1);
step(sys,'-',sysd,'--');
figure (2);
step(feedback(sysd*PI,1));
sisotool(sysd)
