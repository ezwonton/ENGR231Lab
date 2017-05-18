% Read the data file pts_ex.mat
% First row:  x values
% Second row: y values (observed)
load pts_ex
N = length(pts);
% Make the design matrix, D, and observation vector, Y
D = [ones(N,1), pts(1,:)']
Y = pts(2,:)'   % The symbol ' transposes the matrix
                % This makes it a column vector
% Find Beta_est based on the equations
% Use the matrix equation to get all of the estimated y values
beta_est = (D'*D)^-1*(D'*Y)
Y_est = D*beta_est;
%% Plot the points as circles and the fitted line
plot(pts(1,:),pts(2,:),'o'), hold on
plot(pts(1,:),Y_est,'r')
legend('Observations','Estimated Linear Fit')
%% Calculate the RMS Error
% Notice that both Y and Y_est are column vectors.
err = Y-Y_est;
RMSE = (err'*err/N)^0.5
title(['RMS error = ', num2str(RMSE)])

