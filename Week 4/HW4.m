%{
A = [1 -2 4; -5 2 0; 1 0 3]; % setting A: coeff of system of equations
B = [1; 2; 3]; % setting B: sol of system of equations
augAB = [A, B]; % setting aug matrix AB of system of equations
r = rref (augAB); % doing rref of AB
d = det(A); % determinant of A


E = [1 2 3; 3 1 -3; -3 4 7];
X = [-5; 4; -7];
augEX = [E, X];
r = rref(augEX);
X1 = E;
X1(:,1) = X;
x = det(X1)/det(E);
Y1 = E;
Y1(:,2) = X;
y = det(Y1)/det(E);
Z1 = E;
Z1(:,3) = X;
z = det(Z1)/det(E);
ans = r(:,4);
sol = [x; y; z];
check = isequal(sol,ans)
%}