%% Eric Wan - ezw23@drexel.edu
%% Problem 1
%{
function[N, XT, D, YT, beta_est, Y_est] = linefit(X, Y)
%% Problem 1
N = length(X);
XT = X';
D = [ones(N,1), XT];
YT = Y';
beta_est = (D'*D)^-1*(D'*YT);
Y_est = D*beta_est;
end
%}

%% Problem 2
load('leastSq1') % Loading in file

%% Problem 3
[N, XT, D, YT, beta_est, Y_est] = linefit(X, Y);
% Running function linefit copied above

%% Problem 4
%{
YT = Y';
beta_est = (D'*D)^-1*(D'*YT);
Y_est = D*beta_est;

variable is already defined in function linefit
%}

%% Problem 5
plot(X, Y, 'o'), hold on % plotting data points of leastSq1
plot(X, Y_est, 'r') % plotting line of best fit
legend('Observations','Estimated Linear Fit') % labeling legend
title('Linear fit of datagiven in leastSq1') % labeling title

%% Problem 6
err = YT - Y_est; % calculating error of each Y value
RMSE = (err'*err/N)^0.5 % calculating RMS error


