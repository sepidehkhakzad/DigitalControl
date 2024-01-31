close all
clear all
clc

s=tf('s');
z = tf('z',0.1);
w0=10;
T=0.01;
G = 1/((s+1)*(s+2)*(s+20));
GFD = 1/(((z-1)/(T)+1)*((z-1)/(T)+2)*((z-1)/(T)+20))
GBD = 1/(((1-z^-1)/(T)+1)*((1-z^-1)/(T)+2)*((1-z^-1)/(T)+20))
GTU = 1/((((2/T)*((z-1)/(z+1)))+1)*(((2/T)*((z-1)/(z+1)))+2)*(((2/T)*((z-1)/(z+1)))+20))
GTUF = 1/(((w0/tan((w0*T)/2))*((z-1)/(z+1))+1)*((w0/tan((w0*T)/2))*((z-1)/(z+1))+2)*((w0/tan((w0*T)/2))*((z-1)/(z+1))+20))
disp('Poles of G:');
disp(pole(G));
disp('Poles of GFD:');
disp(pole(GFD));
disp('Poles of GBD:');
disp(pole(GBD));
disp('Poles of GTU:');
disp(pole(GTU));
disp('Poles of GTUF:');
disp(pole(GTUF));