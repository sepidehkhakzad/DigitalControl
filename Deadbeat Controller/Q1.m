clc
clear all
close all

syms T;
 Ts=0.1;
z=zpk('z',Ts);
F=[0 1 0 0
    -14/15 -3/4 14/15 3/4
    0 0 0 1
    7/5 9/8 -101/40 -101/40];
G=[0
    2/3
    0
    0];
H=[0 0 1 0];
E=0;

A = taylor(exp(F*T))
 B = int(A*G,0,T)
 C=H
 D=E

Ab=[0 1 0 0
-14/15 -3/4 14/15 3/4
0 0 0 1
7/5 9/8 -101/40 -101/40];
Bb=[0
2/3
0
0];
Cb=[0 0 1 0];
Db=0;
[num,den]=ss2tf(Ab,Bb,Cb,Db);
sys=tf(num,den);
P1z = c2d(sys,0.1,'zoh')
Tz=1/z;
 C1z=Tz/(P1z*(1-Tz));
 C1z=minreal(C1z)
step(C1z*P1z/(1+C1z*P1z))
figure
impulse(C1z*P1z/(1+C1z*P1z))
