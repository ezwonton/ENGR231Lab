%% Eric Wan - ezw23@drexel.edu - HW7
format rat
%% Problem #6
a = 4;
C = [1 1 2; -1 a 3; 3 -1.5*a 4];
B = [a; 1; 0];
A = [C B]

x1 = rref(A) % rref solution
x2 = C^-1 * B % matrix inverse solution

%{
B = [24/7; 0; 0] * x + [0; 10/7; 0] * y + [0; 0; -3/7] * z
%}