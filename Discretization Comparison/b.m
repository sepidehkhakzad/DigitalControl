close all
clear all
clc

s=tf('s');
z = tf('z',0.1);
w0=10;
T=0.01;
T2=1;
T3=0.001;
G = 1/((s+1)*(s+2)*(s+20));

GFD = 1/(((z-1)/(T)+1)*((z-1)/(T)+2)*((z-1)/(T)+20))
GBD = 1/(((1-z^-1)/(T)+1)*((1-z^-1)/(T)+2)*((1-z^-1)/(T)+20))
GTU = 1/((((2/T)*((z-1)/(z+1)))+1)*(((2/T)*((z-1)/(z+1)))+2)*(((2/T)*((z-1)/(z+1)))+20))
GTUF = 1/(((w0/tan((w0*T)/2))*((z-1)/(z+1))+1)*((w0/tan((w0*T)/2))*((z-1)/(z+1))+2)*((w0/tan((w0*T)/2))*((z-1)/(z+1))+20))

GFD2 = 1/(((z-1)/(T2)+1)*((z-1)/(T2)+2)*((z-1)/(T2)+20))
GBD2 = 1/(((1-z^-1)/(T2)+1)*((1-z^-1)/(T2)+2)*((1-z^-1)/(T2)+20))
GTU2 = 1/((((2/T2)*((z-1)/(z+1)))+1)*(((2/T2)*((z-1)/(z+1)))+2)*(((2/T2)*((z-1)/(z+1)))+20))
GTUF2 = 1/(((w0/tan((w0*T2)/2))*((z-1)/(z+1))+1)*((w0/tan((w0*T2)/2))*((z-1)/(z+1))+2)*((w0/tan((w0*T2)/2))*((z-1)/(z+1))+20))

GFD3 = 1/(((z-1)/(T3)+1)*((z-1)/(T3)+2)*((z-1)/(T3)+20))
GBD3 = 1/(((1-z^-1)/(T3)+1)*((1-z^-1)/(T3)+2)*((1-z^-1)/(T3)+20))
GTU3 = 1/((((2/T3)*((z-1)/(z+1)))+1)*(((2/T3)*((z-1)/(z+1)))+2)*(((2/T3)*((z-1)/(z+1)))+20))
GTUF3 = 1/(((w0/tan((w0*T3)/2))*((z-1)/(z+1))+1)*((w0/tan((w0*T3)/2))*((z-1)/(z+1))+2)*((w0/tan((w0*T3)/2))*((z-1)/(z+1))+20))

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

disp('Poles of GFD2:');
disp(pole(GFD2));
disp('Poles of GBD2:');
disp(pole(GBD2));
disp('Poles of GTU2:');
disp(pole(GTU2));
disp('Poles of GTUF2:');
disp(pole(GTUF2));

disp('Poles of GFD3:');
disp(pole(GFD3));
disp('Poles of GBD3:');
disp(pole(GBD3));
disp('Poles of GTU3:');
disp(pole(GTU));
disp('Poles of GTUF3:');
disp(pole(GTUF3));