clc
close all
clear all

Ac=[1 0.4 0 0
    0 1 0 0
    0 0 0.914 0
    0 0 0 0.914];
cc=[0.909 -0.036 0.018 0.018];
bc=[0.0958
    0.4
    -0.0308
    -0.0308];

L=[1 1 1 1];

%Simulation

sim('observer_1',[0 5])
subplot(2,2,1)
plot(x1(:,2),x1(:,1),'-b',xhat1(:,2),xhat1(:,1),':r')
legend('Estimated','Real');
xlabel('Time (sec)');
title('X1');
subplot(2,2,2);
plot(x2(:,2),x2(:,1),'-b',xhat2(:,2),xhat2(:,1),':r')
legend('Estimated','Real');
xlabel('Time (sec)');
title('X2');
subplot(2,2,3);
plot(x3(:,2),x3(:,1),'-b',xhat3(:,2),xhat3(:,1),':r')
legend('Estimated','Real');
xlabel('Time (sec)');
title('X3');
subplot(2,2,4);
plot(x4(:,2),x4(:,1),'-b',xhat4(:,2),xhat4(:,1),':r')
legend('Estimated','Real');
xlabel('Time (sec)');
title('X4');
