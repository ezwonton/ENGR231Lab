%% Linear Least Square Estimation
% Given the following set of points:
% First row:  x values
% Second row: y values (observed)
pts = [-0.04 0.35 0.57 1.23 2.17 2.15 3.21 3.44 3.90 4.52 5.48
        4.06 5.78 7.14 8.39 10.3 11.9 13.0 14.4 16.0 17.8 19.1];
% Make the design matrix, D, and observation vector, Y
D = [ones(length(pts),1), pts(1,:)']
Y = pts(2,:)'   % The symbol ' transposes the matrix
% Find Beta based on the equations
beta = (D'*D)^-1*(D'*Y)
% Use the matrix equation to get all of the estimated y values
Y_est = D*beta;
%% Plot the points as circles and the fitted line
plot(pts(1,:),pts(2,:),'o'), hold on
plot(pts(1,:),Y_est,'r')
legend('Observations','Estimated Linear Fit')





