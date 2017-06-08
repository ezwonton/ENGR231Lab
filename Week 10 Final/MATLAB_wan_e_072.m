%% Eric Wan - ezw23@drexel.edu - MatLab Exam Version 5

%% Problem 1 - A
C = 7; % set C
D = -7; % set D
E = 0; % set E
F = -2; % set F

% part i
A1 = [C 0 0 D -3; 2 0 1 2 -2; 5 0 0 7 3; 7 1 0 5 -1; 2 E 1 2 F]; % set A1
B = [15; -7; 5; 4; -7]; % set B
augA1B = [A1, B] % combine and form augmented matrix

% part ii
rrefA1B = rref(augA1B) % rref of A1B
%{
solution is consistent as there is no row of 0s in the RREF coefficeient
matrix A1 with a nonzero in the "solution" b matrix as seen in row 5 with
the entire row being 0
%}

% part iii
free = rrefA1B(:,5) % displaying free variable column from rref
% column 5, or X5, is the free variable

% part iv
A1^(-1) % computing inverse
% The coefficient matrix is not invertible


%% Problem 1 - B
C = 5; % set C
D = 2; % set D
E = 3; % set E
F = 4; % set F
A2 = [C 0 0 D -3; 2 0 1 2 -2; 5 0 0 7 3; 7 1 0 5 -1; 2 E 1 2 F];

% part i
inv(A2) % computing inverse

% part ii
I = eye(5); % setting 5x5 identity matrix
A2I = [A2, I]; % setting AI augmented matrix
rref(A2I) % rref A2I

% part iii
gA2 = A2;
gA2(1,:) = gA2(1,:) - gA2(3,:);
gA2(4,:) = gA2(4,:) - gA2(3,:);
gA2(4,:) = gA2(4,:) - gA2(2,:);
gA2(3,:) = gA2(3,:) - 2 * gA2(2,:);
gA2(2,:) = gA2(2,:) - 2 * gA2(3,:);
gA2(5,:) = gA2(5,:) - 2 * gA2(3,:);
gA2(5,:) = gA2(5,:) - 3 * gA2(4,:);
gA2(5,:) = gA2(5,:) / 8;
gA2(2,:) = gA2(2,:) - 5 * gA2(5,:);
gA2(3,:) = gA2(3,:) + 2 * gA2(5,:);
gA2(3,:) = gA2(3,:) + gA2(1,:);
gA2(1,:) = gA2(1,:) / (-5);
gA2(5,:) = gA2(5,:) - gA2(1,:);
gA2(2,:) = gA2(2,:) + 9 * gA2(1,:);
gA2(2,:) = gA2(2,:) / (-2.7);
gA2(1,:) = gA2(1,:) - 1.2 * gA2(2,:);
gA2(5,:) = gA2(5,:) + 1.7 * gA2(2,:);
gA2(4,:) = gA2(4,:) + gA2(5,:);
gA2(4,:) = gA2(4,:) + 4 * gA2(1,:);
gA2(4,:) = gA2(4,:) + 2 * gA2(2,:);
sol = [gA2(3,:); gA2(4,:); gA2(5,:); gA2(1,:); gA2(2,:)]

%% Problem 2
% part i
load('leastSq5.mat');

% part ii
type linefit.m

% part iii
[N, XT, D, YT, beta_est, Y_est] = linefit(X, Y); % running linefit funct

% part iv
% done in the linefit function

% part v
plot(X, Y, 'o'), hold on, grid on % plotting data points of pts_setA(1)
plot(X, Y_est, 'r'); % plotting line of best fit
legend('Observations','Linear Fit'); % labeling legend
xlabel('x'); % labeling x axis
ylabel('y'); % labeling y axis
title('Linear Fit of data given in leastSq5.mat');

% part vi
err = YT - Y_est; % calculating error of each Y value
RMSEL = (err'*err/N)^0.5 % calculating RMS error
