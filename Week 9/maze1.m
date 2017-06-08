%% Lab7 Week 8 Maze 1 Concepts 15/18/2015
% run this file and then modify it to complete the maze
% make sure it is in the same directory at your trans and rot functions

% Maze 1 Maze 1
close all; clear all;clc;
%% define pacman
xcoords = [0 1 2 3 2   3 2 1 0];
ycoords = [2 1 1 2 2.5 3 4 4 3];
pacman = [xcoords;ycoords;ones(1,length(xcoords))]; % homogeneous coordinates
% note pacman's centeroid is 1.5 in x and 2.5 in y
%% Display Pacman
figure(10)
fill(xcoords,ycoords,'r')
grid on;
hold on;
title('my pacman for ENGR231  note center is 1.5, 2.5 wrt 0,0')

%%   define maze 
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
grid on; 
title('pacman maze Version 1')
%%  show final destination
plot(14,12.5, 'k*', 'linewidth', 5)
%%  Move Pacman about the maze
% note the use of pause shows an animation if you run the completed file

% starting postion
pac0 = trans(0,0)*pacman;  % no translation
fill(pac0(1,:),pac0(2,:),'r')

% move 12 units to right with no rotation
pac1= trans(12,0)*trans(1.5,2.5)*rot(0)*trans(-1.5,-2.5)*pacman; 
fill(pac1(1,:),pac1(2,:),'b')

% move to 21,0 put mouth facing up
% first move center of pacman to (0,0) rotate 90 degrees CW move back to
% (1.5,2.5) then translate 21 in x referenced from the starting position
pac2 = trans(21,0)*trans(1.5,2.5)*rot(90)*trans(-1.5,-2.5)*pacman;
fill(pac2(1,:),pac2(2,:),'g')

%% your code goes here *********
%[rand rand rand] gives you different colours everytime you run it!

% How Exciting!!! haha

pac3 = trans(0,10)*pac2;
fill(pac3(1,:),pac3(2,:),[rand rand rand])
% moving pacman 3 image 10 units in y

pac4 = trans(21,20)*trans(1.5,2.5)*rot(180)*trans(-1.5,-2.5)*pacman;
fill(pac4(1,:),pac4(2,:),[rand rand rand])
% creating pacman 4 by rotating orginial pacman by 180 degrees then
% translating 21 units in x and 20 units in y

pacex = trans(0,10)*rot(90)*pac3;
fill(pacex(1,:),pacex(2,:),[rand rand rand])


pac5 = trans(1,20)*trans(1.5,2.5)*rot(-90)*trans(-1.5,-2.5)*pacman;
fill(pac5(1,:),pac5(2,:),[rand rand rand])
% creating pacman 5 by rotating orginial pacman by -90 degrees then
% translating 1 unit in x and 20 units in y

pac6 = trans(0,-5)*pac5;
fill(pac6(1,:),pac6(2,:),[rand rand rand])
% moving pacman 5 image -5 units in y

pac7 = trans(1,10)*pacman;
fill(pac7(1,:),pac7(2,:),[rand rand rand])
% moving original pacman image 1 unit in x and 10 units in y

pac8 = trans(10,0)*pac7;
fill(pac8(1,:),pac8(2,:),[rand rand rand])
% moving pacman 7 image 10 units in x