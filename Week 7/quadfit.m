function [N, XT, D, YT, beta_est, Y_est] = quadfit(X, Y)
N = length(X);
XT = X';
D = [ones(N,1), XT, XT.^2];
YT = Y';
beta_est = (D'*D)^-1*(D'*YT);
Y_est = D*beta_est;
end

