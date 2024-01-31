clc
clear all
close all

G=tf([-1/(4*460) (5/406)-(1/4) 5],[0.5 1.5 1 0]);
Glead=tf([1 1],[1/12 1]);
Glag=tf([1/0.08 1],[1/0.0125 1]);
sys=Glead*Glag*G;
margin(sys)
z=tf('z',0.1);
G=(0.076*(z+1)*(z-0.9)*(z-0.99))/((z-1)*(z-0.999)*(z-0.33));
sisotool(G)

