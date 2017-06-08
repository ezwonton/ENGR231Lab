%% MATLAB Exam Maze 5
% Run this file and then modify it to complete the MATLAB Exam maze.
% Make sure it is in the same directory at your trans and rot functions

close all; clear all;clc;
%% Define pacman
xcoords = [0 1 2 3 2   3 2 1 0];
ycoords = [2 1 1 2 2.5 3 4 4 3];
pacman = [xcoords;ycoords;ones(1,length(xcoords))]; % homogeneous coordinates
% note pacman's centeroid is 1.5 in x and 2.5 in y
%% Display Pacman
figure(10)
fill(xcoords,ycoords,'r')
axis([0 5 0 5])
grid on; axis equal; hold on
title('My pacman for ENGR231 MATLAB EXAM Version 5  note center is 1.5, 2.5 wrt 0,0')

%% Define Maze 
% create a new figure for maze ans subsequent work
close all
figure(777)

% outer edges
mm = [[0;0], [25;0], [25;25], [0;25], [0;10], [15;10], [15;15], [5;15], [5;20]];
mazey1 = [[0;0], [0;5]]; % vertical at end
% inner closure
mazex2= [[0;5], [20;5], [20;20], [5;20]];

plot(mm(1,:),mm(2,:),'k','linewidth',3)
hold on
plot(mazex2(1,:),mazex2(2,:),'k','linewidth',3)
plot(mazey1(1,:), mazey1(2,:), 'k','linewidth', 3)
axis([-5, 30, -5, 30])
grid on; 
title('Pacman Maze MATLAB EXAM Version 5')
%%  Show Destination
plot(1.5,2.5, 'k*', 'linewidth', 5)
%%  Move Pacman about the maze
% note the use of pause shows an animation if you run the completed file
%  show final destination

pac0= trans(12,10)*trans(1.5,2.5)*rot(180)*trans(-1.5,-2.5)*pacman;  
fill(pac0(1,:),pac0(2,:),'r')
pause(1)

pac1 = trans(1,10)*trans(1.5,2.5)*rot(90)*trans(-1.5,-2.5)*pacman;
fill(pac1(1,:),pac1(2,:),'c')
pause(1)

pac2 = trans(1,15)*trans(1.5,2.5)*rot(90)*trans(-1.5,-2.5)*pacman;
fill(pac2(1,:),pac2(2,:),'y')
pause(1)

%% Your modification of the code should start here *********
%% Eric Wan - ezw23@drexel.edu - MatLab Final Version 5
type rot
type trans

% I forgone the pause function as it wastes time
pac3 = trans(1,0)*trans(1.5,2.5)*rot(180)*trans(-1.5,-2.5)*pacman;
fill(pac3(1,:),pac3(2,:),[rand rand rand])

pac4 = trans(10,0)*pac3;
fill(pac4(1,:),pac4(2,:),[rand rand rand])

pac5 = trans(10,0)*pac4;
fill(pac5(1,:),pac5(2,:),[rand rand rand])

pac6 = trans(21,10)*trans(1.5,2.5)*rot(-90)*trans(-1.5,-2.5)*pacman;
fill(pac6(1,:),pac6(2,:),[rand rand rand])

pac7 = trans(0,10)*pac6;
fill(pac7(1,:),pac7(2,:),[rand rand rand])

pac8 = trans(1,20)*pacman;
fill(pac8(1,:),pac8(2,:),[rand rand rand])

pac9 = trans(10,0)*pac8;
fill(pac9(1,:),pac9(2,:),[rand rand rand])


