clc
clear all
close all

num=[1 -3];
den=[1 4 3];
sys = tf(num,den)
sysd = c2d(sys,0.1,'zoh');
step(sys,'-',sysd,'--')