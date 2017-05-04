%% Eric Wan - ezw23@drexel.edu
A = [2 1 4 9 6; 7 1 0 5 -1; 32 0 1 0 3; -2 0 1 22 -2; -51 0 0 -3 4]; % Set A
B = [13; 5; 68; 17; -6]; % Set B

%% Problem 1
detA = det(A); % Determinant of A
invA = inv(A); % Inverse of A
detinvA = det(invA)
det1A = 1 / detA % Proving equality
% Matrix A is invertible beacuse it has a determinant not equal to 0

%% Problem 2
A1 = A + 1; % New matrix of A + 1
det(A) * det(A1)
det(A * A1) % Proving equality

%% Problem 3
invA = inv(A); % Calling invA again
invA * A
A * invA % Proving equality to I

%% Problem 4
I = eye(5); % Identity matrix 5x5
AI = [A,I]; % Creating matrix [A, I]
rref(AI)
IinvA = [I,invA] % Proving equality

%% Problem 5
augAB = [A,B] % Setting AB
% vv Doing RREF manually with Gauss-Jordan Elimination vv
augAB(4,:) = augAB(4,:) + augAB(1,:)
augAB(3,:) = augAB(3,:) - 16 * augAB(1,:)
augAB(5,:) = augAB(5,:) + 7 * augAB(2,:)
augAB(5,:) = augAB(5,:) + augAB(1,:)
augAB(1,:) = 0.5 * augAB(1,:)
augAB(2,:) = augAB(2,:) - 7 * augAB(1,:)
augAB(5,:) = augAB(5,:) - 8 * augAB(4,:)
augAB(3,:) = augAB(3,:) + 16 * augAB(4,:)
augAB(2,:) = augAB(2,:) + 2.5 * augAB(4,:)
augAB(2,:) = augAB(2,:) / -1.5
augAB(3,:) = augAB(3,:) - 17 * augAB(2,:)
augAB(5,:) = augAB(5,:) + 36 * augAB(2,:)
augAB(3,:) = augAB(3,:) / 930
augAB(5,:) = augAB(5,:) / - 1431
augAB(5,:) = augAB(5,:) - augAB(3,:)
augAB(5,:) = augAB(5,:) / ( (augAB(5,5) ) )
augAB(1,:) = augAB(1,:) - 0.5 * augAB(4,:)
augAB(1,:) = augAB(1,:) + 0.5 * augAB(2,:)
augAB(4,:) = augAB(4,:) - 5 * augAB(2,:)
augAB(1,:) = augAB(1,:) + 28 * augAB(3,:)
augAB(2,:) = augAB(2,:) + 34 * augAB(3,:)
augAB(4,:) = augAB(4,:) - 201 * augAB(3,:)
augAB(1,:) = augAB(1,:) - augAB(1,5) * augAB(5,:)
augAB(2,:) = augAB(2,:) - augAB(2,5) * augAB(5,:)
augAB(3,:) = augAB(3,:) - augAB(3,5) * augAB(5,:)
augAB(4,:) = augAB(4,:) - augAB(4,5) * augAB(5,:)
%% ^^ Doing RREF manually with Gauss-Jordan Elimination ^^

% Reorganizing matrix to RREF form
solrref = [augAB(1,:); augAB(4,:); augAB(2,:); augAB(3,:); augAB(5,:)]
rrefAB = rref(augAB) % Proving equality

%% Problem 6
% Doing Cramer's rule 5 times for x1, x2, x3, x4, x5
Ax1 = A; % setting Ax1
Ax1(:,1) = B; % replacing column 1 of Ax1
x1 = det(Ax1) / det(A); % solving for x1

Ax2 = A;
Ax2(:,2) = B;
x2 = det(Ax2) / det(A);

Ax3 = A;
Ax3(:,3) = B;
x3 = det(Ax3) / det(A);

Ax4 = A;
Ax4(:,4) = B;
x4 = det(Ax4) / det(A);

Ax5 = A;
Ax5(:,5) = B;
x5 = det(Ax5) / det(A);

solcramer = [x1; x2; x3; x4; x5] % Reorganizing matrix solution 
rrefAB(:,6) % Proving equality