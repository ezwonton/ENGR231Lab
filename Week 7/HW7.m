%% Eric Wan - ezw23@drexel.edu - HW7
format rat

%% Problem #2
u1 = [1; 0; 0; 1];
u2 = [1; 0; 1; 0];
u3 = [1; 0; 0; 0];
u = [u1 u2 u3];
S = rref(u);
u4 = [0; 1; 0; 0];
u = [u1 u2 u3 u4];
S = rref(u);


%% Problem #3
c3 = [1 1 2; 0 1 2; -1 0 1];
rref(c3);

e3 = [1 0; 0 1; 0 3];
rref (e3);

g3 = [1 0 1 1; 0 1 1 1; 0 0 0 1; 0 0 0 0];
rref (g3);


%% Problem #4
a4 = [1 0 1 1 5; 1 0 2 -3 2; 2 0 0 0 1];
rref(a4);

b4 = [1 0; 1 0; 2 0];
rref(b4);

c4 = [1 1 5; 2 -3 2; 0 0 1];
rref(c4);

%% Problem 5
b5 = [1 3 0 0 0 0; 0 0 1 2 0 0; 0 0 0 0 1 0];
rref(b5)


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