%% Eric Wan - ezw23@drexel.edu - Lab 7
%% Problem 1
type quadfit % prints out code for function quadfit

%% Problem 2
load 'pts_setA(1).mat'
X = ptsMixA(1,:); % setting X
Y = ptsMixA(2,:); % setting Y

%% Problem 3
[N, XT, D, YT, beta_est, Y_est] = quadfit(X, Y); % running quadfit

%% Problem 4
%{
Calculated in quadfit printed above
%}

%% Problem 5
plot(X, Y, 'o'), hold on, grid on % plotting data points of pts_setA(1)
plot(X, Y_est, 'r') % plotting line of best fit
legend('Observations','Quad Fit') % labeling legend
title('Quadratic Fit of data given in ptsMixA.mat') % labeling title

%% Problem 6
err = YT - Y_est; % calculating error of each Y value
RMSEQ = (err'*err/N)^0.5 % calculating RMS error

%% Problem 7
[N, XT, D, YT, beta_est, Y_est] = linefit(X, Y); % running linefit
err = YT - Y_est; % calculating error of each Y value
RMSEL = (err'*err/N)^0.5 % calculating RMS error
%{
Quadratic fit is better than linear estimate. The RMS error of the quadrtic
fit (RMSEQ) is less than that of the linear estimate (RMSEL). This inicates
that the quadratic fit is better in reference with the data.
%}


