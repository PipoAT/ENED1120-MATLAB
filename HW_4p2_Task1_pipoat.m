% Week 4 MATLAB Homework
% File: 4p2_HW_Task1_pipoat.m
% Date: 10 February 2022
% By: Andrew Pipo (pipoat)
%
% Section: 016
% Team: 234
%
% ELECTRONIC SIGNATURE
% Andrew Pipo
%
% The electronic signature above indicates the script
% submitted for evaluation is my individual work, and I
% have a general understanding of all aspects of its
% development and execution.
%
% This program can intake the name of the players and
% number of rounds and the program can decide which player
% goes first and proceeds with the game

clear; clc

xi = 0;
yi = 0;

player1 = input("Enter Player 1 name: ", 's');
player2 = input("Enter Player 2 name: ", 's');
N = input("The number of attempts n = ");

while xi == yi 
    xi = randi([1,6], 1);
    yi = randi([1,6], 1);
end

if xi > yi
   fprintf('The driver is %s, the follower is %s \n',player1,player2); 
   A = player1;
   B = player2;
   Fr = A;
   FolR = B;
   ATot = 0;
   BTot = 0;
else
   fprintf('The driver is %s, the follower is %s \n',player2,player1);  
   A = player2;
   B = player1;
   Fr = A;
   FolR = B;
   ATot = 0;
   BTot = 0;
end

for k = 1:N
    FR = randi([1,6], 1);
    FolR = randi([1,6], 1);

    if FR > FolR
        fprintf('The winner of the round %d is %s \n',k,A);
        k = k +1;
        ATot = ATot + 1;
    else
        fprintf('The winner of the round %d is %s \n',k,B);
        k = k +1;
        BTot = BTot + 1;
    end
end

if ATot > BTot
    fprintf('The winner of the game is %s \n',A);
elseif BTot > ATot 
    fprintf('The winner of the game is %s \n',B);
else
    fprintf('The result of the game is a tie');
end


fprintf('The points for %s is %d \n',A,ATot);
fprintf('The points for %s is %d \n',B,BTot);


