clc
close all
clear all

% Define variables
sigpsq=0.001; sigvsq=0.002; sigmsq=0.001;
A=[0 1 ; 0.25 0.5];
N=[sigpsq 0 ; 0 sigvsq];
H=[1 0];
% Initial values
p=[30 0 ; 0 30];
alpha(1)=0.5;
beta(1)=0;
% Calculate error covariance and filter gains
for i=1:10
pm=A*p*A'+N; % apriori error covariance
k=pm*H'*inv(H*pm*H'+sigmsq); % kalman gain
p=(eye(2)-k*H)*pm; % aposteriori error covariance
alpha(i+1)=k(1);
beta(i+1)=k(2);
end
% Plot the Filter Gains
plot([0:10],alpha,'k-','linewidth',2); hold on; plot([0:10],beta,'k--','linewidth',2);
xlabel('k'); ylabel('Filter Gains');
legend('\alpha_k','\beta_k_/_T','location',[0.72 0.7 0.16 0.15])

mu=[0 0
0 0];
n=mvnrnd(mu,N);
v=mvnrnd(0,0.002);
nt=[n(1,1) n(2,2)];
HT=[1 0];
%Simulation
sim('observer_1',[0 5])
figure(2)
subplot(2,1,1)
plot(x1(:,2),x1(:,1),'-b',xhat1(:,2),xhat1(:,1),':r')
legend('Estimated','Real');
xlabel('Time (sec)');
title('X1');
subplot(2,1,2);
plot(x2(:,2),x2(:,1),'-b',xhat2(:,2),xhat2(:,1),':r')
legend('Estimated','Real');
xlabel('Time (sec)');
title('X2');

