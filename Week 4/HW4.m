
%{
A = [1 -2 4; -5 2 0; 1 0 3]; % setting A: coeff of system of equations
B = [1; 2; 3]; % setting B: sol of system of equations
augAB = [A, B]; % setting aug matrix AB of system of equations
r = rref (augAB); % doing rref of AB
ans = r(:,4) % solution vector for system of equations
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
sol = [x; y; z]
ans = r(:,4)
check = isequal(sol,ans);
%}

%{
%% Question 3
HWA = [-1 0 3; 2 1 2; -1 0 1];
HWB = [1 3 0; 0 1 0; 0 0 1];
HWC = [1 0; 2 1; 1 3];
HWD = [3 -1 0; 2 1 2];
2*HWA;
HWA + 2*HWB;
HWA * HWB;
HWB * HWA;
HWC * HWD;
HWD * HWC;
HWA.^2;
HWA*HWA;
isequal(HWA.^2,HWA*HWA);
HWA * HWC;
%}

%% Question 4
A4 = [1 2; 2 -4];
AA = [0; 1];
Ax = A4;
Ax(:,1) = AA;
x = det(Ax)/det(A4);
Ay = A4;
Ay(:,2) = AA;
y = det(Ay)/det(A4);
a = [x; y]


B4 = [3 -4; 1 1];
AB = [1; 1];
Bx = B4;
Bx(:,1) = AB;
x = det(Bx)/det(B4);
By = B4;
By(:,2) = AB;
y = det(By)/det(B4);
b = [x; y]


C4 = [1 1 -3; 2 0 1; 1 -4 0];
AC = [1; 4; 1];
Cx = C4;
Cx(:,1) = AC;
x = det(Cx)/det(C4);
Cy = C4;
Cy(:,2) = AC;
y = det(Cy)/det(C4);
c = [x; y]


%% Question 5
A = [1 1 0; 2 2 0; 0 4 1; 1 1 1];
B = [1; -2; 1 ;2];
augAB = [A, B]; % part a: setting up matrix
column2A = augAB(:,2); % part b: getting column 2 of A
help det() % part c: getting help for det in matlab

exD = [1 2; 3 4]; % part d: 2x2 determinant
detD = det(exD);
TwoTwo = exD(1,1) * exD(2,2) - exD(2,1) * exD(1,2);
checkD = isequal(detD, TwoTwo); % checking forumale with det function

exE = [1 2 3; 3 1 -3; -3 4 7]; % part e: 3x3 determinant
detE = det(exE);
ThreeThree1 = 1 * ( exE(2,2) * exE(3,3) - exE(2,3) * exE(3,2) );
ThreeThree2 = 2 * ( exE(2,1) * exE(3,3) - exE(3,1) * exE(2,3) );
ThreeThree3 = 3 * ( exE(2,1) * exE(3,2) - exE(3,1) * exE(2,2) );
ThreeThree = ThreeThree1 - ThreeThree2 + ThreeThree3;
checkE = isequal(detE,ThreeThree);
