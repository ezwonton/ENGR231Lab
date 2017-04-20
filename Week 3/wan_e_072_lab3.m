%% Eric Wan - ezw23@drexel.edu

%% Question 1
A = [1 2 -3; 2 5 -8; 3 8 -13]; % Settting values of A matrix
B = [1; 4; 7]; % Setting values of B matrix
augAB = [A, B] % Forming augmented matrix AB

%% Question 2
r = rref(augAB) % Finding reduced row echelon form

%% Question 3
%{
pivots: (1, 1), (2, 2)
basic variables: X1, X2
free variables: X3
%}

%% Question 4
%{
X1 = -3 - X3
X2 = 2 + 2X3
X3 = free
%}

%% Quesiton 5
X3 = 1; % Setting value of X3
X1 = -3 - X3; % Defining X1 as a funciton of X3
X2 = 2 + 2*X3;% Defining X2 as a funciton of X3
sol_vec1 = [X1; X2; X3]; % Defining solution vector
check1 = A * sol_vec1; % Check vector of solved the system
equal1 = isequal(B, check1) % Returns true if the solutions work

X3 = 2; % Setting a different value of X3 to show free variable
X1 = -3 - X3; % Same as above
X2 = 2 + 2*X3;
sol_vec2 = [X1; X2; X3];
check2 = A * sol_vec2;
equal2 = isequal(B, check2) % Same as above

%% Question 6
M = augAB % Setting up augmented matrix
M(2,:) = M(2,:) - 2*M(1,:) % Row2 - 2x Row1
M(3,:) = M(3,:) - 3*M(1,:) % Row3 - 3x Row1
M(3,:) = M(3,:) - 2*M(2,:) % Showing Row3 is a free variable
M(1,:) = M(1,:) - 2*M(2,:) % Row1 - 2x Row2
equal3 = isequal(r, M) % Returns true if code function rref() 
% and manually done are equivalent
