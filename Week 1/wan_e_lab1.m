%% Question 1: Time values between 0 and 6
t = (0:0.01:6);

%% Time values between 0 and 10 (for graphs)
t = (0:0.01:10);

%% Question 2: y1 sin function, y2 cos function
y1 = sin(2*t);
y2 = cos(5*t);

%% Setting up the figure for plotting 3 graphs
%% y1(t), y2(t), and Lissajous curve
figure

%% Subplot 1 for y1(t)
subplot(2,2,1) %% subplot row 1, column 1
p1 = plot(t,y1) %% plot1 ploting y1 vs. time
p1.LineWidth = 2; %% setting linewidth to 2
p1.Color = 'red'; %% setting colour to red
title('y1(t)'); %% setting title
xlabel('Time'); %% setting label of x-axis
ylabel('Function Value'); %% setting label of y-axis

%% Subplot 2 for y2(t) following same conventions of plot 1
subplot(2,2,2) %% subplot row 1, column 2
p2 = plot(t,y2)
p2.LineWidth = 2;
p2.Color = 'black';
title('y2(t)');
xlabel('Time');
ylabel('Function Value');

%% Question 4: Subplot 3 for y2 vs y1 as seen in the example provided
%% Follows same conventions of plot 1
subplot(2,1,2) %% subplot row 2, column 1 & 2
p3 = plot(y1,y2) %% setting x-axis to y1 and y-axis to y2
p3.LineWidth = 1;
p3.Color = 'blue';
title('Lissajous Curve');
xlabel('y1');
ylabel('y2');

%% Question 5: Subplot 4 for y2 vs y1 as seen in the example
%% Follows same conventions of plot 1
%% The graph is rotated 90 degrees 
figure %%Creating new figure to plot y1 vs. y2
p4 = plot(y2,y1)
p4.LineWidth = 1;
p4.Color = 'green';
title('y1 vs. y2');
xlabel('y2');
ylabel('y1');

y1 = sin(2 * 2*t); %% Multiplying arguments in sine function by 2
y2 = cos(2 * 5*t); %% Multiplying arguments in cosine function by 2
%% if both arguements are doubled, nothing changes 2/2 = 1
figure %%Creating new figure to plot when arguements are doubled
p5 = plot(y1,y2)
p5.LineWidth = 1;
p5.Color = 'black';
title('y1(2*) vs. y2(2*)');
xlabel('y1');
ylabel('y2');

