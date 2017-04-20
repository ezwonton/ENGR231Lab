%% Lab 2 - ezw23@drexel.edu

%% Problem 1
p = [-1 -4 6 25 0 0];
% setting up polynomial equation represented by coefficients
r = roots(p);
% calculating the roots of the polynomial

%% Problem 2
x = @(y) -y.^5 - 4*y.^4 + 6*y.^3 + 25*y.^2;
% setting up derivative function
y = -4.2:0.01:2.8;
% setting up the range of y

figure; % creating figure
subplot(2,1,1); % denoting the subplot of the figure
p1 = plot(y, x(y)); % plotting dy vs y
p1.Color = ('red'); % making colour red
p1.LineWidth = 2; % making linewidth 2
title('Phase Plane dY/dt vs. Y') % adding title
xlabel('Y') % adding x axis label
ylabel('dY/dt') % adding y axis label
grid on; % turning on grid
hold on; % ensuring nothing is overwritten

% Setting up the equilibrium points where dy = 0
r1 = fzero(x, r(1));
r2 = fzero(x, r(2));
r3 = fzero(x, r(3));
r4 = fzero(x, r(4));
r5 = fzero(x, r(5));
% making an array of said values
rs = [r1 r2 r3 r4 r5];
plot(rs, x(rs), 'k*'); % plotting equilibirum points

legend('show'); % showing the legend
legend('Phase Plot', 'Equilibrium Points'); % labeling the legend


%% Question 3
f = -y.^5 - 4*y.^4 + 6*y.^3 + 25*y.^2; % redefining function
sign = []; % empy array of signs
% going through function values to making array of signs
for i = f;
    if i > 0;
        sign = [sign, 1]; % sign + 1 if positive
    end
    if i < 0
        sign = [sign, -1]; % sign -1 if negative
    end
end

% following same procedure of first plot
subplot(2,1,2);
p2 = plot(y,sign);
p2.Color = ('blue')
p2.LineWidth = 2
title('Sign dY/dt vs. Y')
xlabel('Y')
ylabel('Sign dY/dt')
grid on;
hold on;
plot(rs, x(rs), 'k*');

legend('show');
legend('Sign of Phase Plot', 'Equilibrium Points');

%% Question 4
% Equilibrium points @ y = -3.8905, -2.5902, 0, 0, 2.4808
% y = -3.8905: stable, ROC (-4.2, -2.5902)
% y = -2.5902: unstable, ROC [-2.5902]
% y = 0: semistable (-2.5902, 2.4808]
% y = 2.4808: stable (2.4808, 2.8)
