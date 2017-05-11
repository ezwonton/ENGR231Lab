%% HW 5 - Eric Wan - ezw23@drexel.edu

%% Problem 1
A1 = [1 2 3; 0 4 5; 1 0 6];
sol1 = det(A1) * inv(A1) % Finding adjoint matrix
% adjoint(A1)
% ^^ Incorrect syntax as the function DNE, here as reminder for myself

%% Problem 2
A2 = [1 2; 3 4];
ajdA2 = [4 -2; -3 1]; % Adjoint matrix
invA2 = ajdA2 / det(A2) % Finding inverse
inv(A2); % Check

%% Problem 3
A3 = A1;
cofA3 = [24 5 -4; -12 3 2; -2 -5 4]; % Cofactor matrix
adjA3 = [24 -12 -2; 5 3 -5; -4 2 4]; % Adjoint = Transposed cofactor
% adjA3 = [1 0 1; 2 4 0; 3 5 6]
% ^^ Incorrect calculation, here as a reminder for myself
invA3 = adjA3 / det(A3) % Finding inverse
inv(A3); % Check

%% Problem 4
A4 = A2;
I4 = eye(2); % Creating 2x2 identity matrix
aug4 = [A4, I4]; % Concatenating A4 and I4 
rref4 = rref(aug4) % Finding inverse of A4 using RREF
inv(A4); % Check

%% Problem 5
A5 = [4 3; 3 2];
invA5 = inv(A5); % Inverse matrix
sol5 = A5 * invA5 % Showing equality
invA5 * A5 % Showing equality

%% Problem 6
[z, a, y, b, x, c, w, d] = deal(0); % setting all variable letters = 0
y = 10; % for part d later overwriting above
c = 11; % for part d later overwriting above
B6 = [z a 1 4; y b 2 3; x c 3 2; w d 4 1];
%{
part a: The diragonal elements of B are z [1, 1], b [2, 2], 3 [3, 3], 
1 [4, 4]. The nondiagonal elements of B are the rest of the values in the
matrix a, 1, 4, y, 2, 3, x, c, 2, w, d, and 4.
%} 
B6T = transpose(B6) % part b: Transpose of B
B6TT = transpose(B6T) % part c: Transpose of B'
%{
part d:
B21 = y; in the transposed matrix, B', y is at B'(1, 2)
B32 = c; in the transposed matrix, B', c is at B'(2, 3) 
B44 = 1, in the transposed matrix, B', 1 is at B'(4, 4), the same position
The transposed matrix is a row and column exchangin
B(1, 3) becomes B'(3, 1) as the checks below would show
%}
B621 = B6(2, 1); % y in B
B6T12 = B6T(1, 2); % y in B'
B632 = B6(3, 2); % c in B
B6T23 = B6T(2, 3); % c ion B'
B644 = B6(4, 4); % 1 in B
B6T44 = B6T(4, 4); % 1 in B'

%% Problem 7
A7 = [ 3 2 0 2; 1 -1 0 4; 0 5 1 -1];
rrefA7 = rref(A7) % Finding rref of A7
%{
parametrix equation is:
x = [x1, x2, x3] = [2; -2; 9]
%}
