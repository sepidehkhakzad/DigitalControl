clc
close all
clear all

syms z n;
H=(z^2+1.5*z+0.45)/(z^2+z+0.1);
x=2*sin(2*n);
X=ztrans(x);
Y=X*H
Hz = zpk([-1.0854 -0.4146],[-0.8873 -0.1127],1);
csys = canon(Hz ,'modal') 
[zc,pc]= ss2zp(csys.A,csys.B,csys.C,csys.D)
[q,r] = deconv([-1.0854 -0.4146],[-0.8873 -0.1127]);
Bmarkov=[q(1)
    0];
Cmarkov=[1 0];
Amarkov=[0 1
    -1 -0.1];
[zmarkov,pmarkov]= ss2zp(Amarkov,Bmarkov,Cmarkov,1)