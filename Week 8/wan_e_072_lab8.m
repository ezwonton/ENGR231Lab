%% Eric Wan - ew23@drexel.edu - Lab8

%% Problem #1
type trans.m % prints the trans function
t = trans(5,-5.2)* [1;1;1] % sample calculations


%% Problem #2
type root.m % prints the root function
r = root(-45)*[1;0;1] % sample calculations


%% Problem #3
hold on;
axis square;
p = [5; 0; 1]; % defining p
x = p(1,:); % defining x from p
y = p(2,:); % defining y from p
p1 = plot(x, y); % ploting x and y as initial point
p1.Marker = '*';
p1.Color = 'red';

for i = 1: 5: 355 % for loop
    p = root(5)* p; % new p values every iteration
    x = p(1,:); % new x every iteration from p
    y = p(2,:); % new y every iteration from p
    p2 = plot(x, y); % plotting new x and y in circle
    p2.Marker = '*';
    p2.Color = 'blue';
end
title('cicle by root(d) radius 5');
xlabel('x coord');
ylabel('y coord');


%% Problem #4
x_coords = [5 8 8 5]; % x coord for rectangle
y_coords = [0 0 1 1]; % y coord for rectangle
rectf = [x_coords; y_coords ; 1 1 1 1]; % sets the rectangle
figure; % plots the rectangle
fill(rectf(1,:),rectf(2,:), 'b') % filling in the rectangle
axis square;
title('rectangle');


%% Problem #5
hold on 
rectf = trans(10,0)*rectf; % shifting rectangle right 10 units
fill(rectf(1,:),rectf(2,:), 'r')
rectf = trans(0,5)*rectf; % shifting rectangle up 5 units
fill(rectf(1,:),rectf(2,:), 'k')


%% Problem #6
x_coords = [5 8 8 5]; % recalling original rectangle
y_coords = [0 0 1 1];
rectf = [x_coords; y_coords ; 1 1 1 1];
figure;
fill(rectf(1,:),rectf(2,:), 'r')
axis square;
title('rotated rectangle');
hold on
for i = 1:20:340 % foor loop
    rectf = root(20)*rectf; % rotating 20 degrees every iteration
    fill(rectf(1,:),rectf(2,:), 'b')
end

%% Problem #7
x_coords = [-1 1 1 -1]; % setting x coord for rectangle
y_coords = [-1 -1 1 1]; % setting y coord for rectangle
rectf = [x_coords; y_coords ; 1 1 1 1]; % creating rectangle 
figure; % plotting rectangle
fill(rectf(1,:),rectf(2,:), 'r')
axis square;
hold on
rectf = root(30)*rectf; % rotating rectangle 30 degrees
fill(rectf(1,:),rectf(2,:), 'b')

