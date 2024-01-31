clc
clear all
close all

 z=tf('z',1);
 G=0.315*((z+1)*(z-0.8))/((z-0.07)*(z-1)^(2))
 sisotool(G)