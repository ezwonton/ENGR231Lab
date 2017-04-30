%% Eric Wan - ezw23@drexel.edu

%% Question 1
A = [7 0 -16; -3 1 4; 2 -3 4]; % setting A: coeff of system of equations
B = [-9; 2; 4]; % setting B: sol of system of equations
augAB = [A, B]; % setting aug matrix AB of system of equations
r = rref (augAB) % doing rref of AB
% there is no solution as the last row is inconsistent

%% Question 2
k = 4:0.05:6.90; % setting values of k
n = numel(k); % part a: number of values in k for 
results = zeros(3,n); % part b: creating results matrix
for w = 1:n % part c: setting w as indexing variable
    A = [k(w) 0 -16; -3 1 4; 2 -3 4]; % part i: setting A with k of w
    B = [-9; 2; 4]; % setting B
    augAB = [A, B]; % setting aug matrix
    r = rref (augAB); % part ii: doing rref of AB
    results(:,w) = r(:,4); % part iii: pushing solution into results
end

%% Question 3
figure % creating figure
plot(k,results); % plotting results vs. k
title('Solution of linear equations vs k Version A'); % add title
xlabel('k'); % add label of x axis
ylabel('variables x1, x2, x3'); % add label of y axis
grid on
hold on
legend('show'); % showing legend
legend('x1', 'x2', 'x3'); % editing legend
% as k approaches 7. the graphs go towards infinity which is correct
% because there is no solution at k = 7
