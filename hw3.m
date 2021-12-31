clear
clc
cd '/Users/frankdemacbookpro/Dropbox/SSE_yr2/QMMII/hw3'
% Yifan Lyu, QMM II, PS3, Kalman Filter

% define matrix
A = [0.5 0.2;...
      0 0.9];
B = [0;0];
G = [1 0;...
     0 0.5];


C = [1 1];
D = 0;
H = 0;


Q = eye(2); % process noise covariance
R = 2;      % sensor noise covariance

Ts = -1;
sys = ss(A,[B G],C,D,Ts); 


%[kalmf,K,P] = kalman(sys,Q,R)

Tfinal = 20;
impulse(sys,Tfinal)
saveas(gcf,'IRF1.png')


%impulse(sys,Tfinal)
%saveas(gcf,'IRF1.png')
%[kalmf,K,P,Mx,Z] = kalman(sys,Q,R)

% K: Kalman Gain
% P: Error variance matrix
% Verify:

%K_2 = P*C'*(C*P*C' + 2)^(-1)


