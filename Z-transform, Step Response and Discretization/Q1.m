clc
clear all
close all

syms z;
syms a;
syms w;
X1=(a^-2)*((2*a*z-z^(2))/(z-a)^2);
X2=(0.5/(z-0.5))-((2*z)/(z-2)^2);
X3=(0.5/(1-(z^(-1))))+0.5*((1-cos(2*w)*z^-1)/(1-2*cos(2*w)*z^(-1)+z^-2));
iztrans(X1)
iztrans(X2)
iztrans(X3)