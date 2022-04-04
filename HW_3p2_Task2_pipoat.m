% Homework 3.2 Task 2: MATLAB 1
% File: HW_3p2_Task2_pipoat.m
% Date: 3 February 2022
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
% This program can accept the input of the parameters and use
% equations to compute values to determine the corresponding Public Health
% Action
%

sigma = input("Enter the coefficient sigma =");
mu = input("Enter the coefficient mu =");
gamma = input("Enter the coefficient gamma =");
delta = input("Enter the coefficient delta =");
beta1 = input("Enter the coefficient beta1 =");
beta2 = input("Enter the coefficient beta2 =");
alpha = input("Enter the parameter alpha =");

F = delta * ((beta1 * sigma) + ((gamma + mu) * beta2)) / ((sigma + mu) * (gamma + mu) * mu);
R_o = (1 - alpha) * F;
Y = round(R_o , 2);
alpha_c = (1 - (1 / F));

fprintf("The reproduction number R_o = %0.2f \n",Y);
fprintf("The threshold coefficient for action is alpha_c = %0.2f \n",alpha_c);


if Y == 1
    if alpha < alpha_c
        fprintf("Endemic State, Increase Public Health Measures \n");
    elseif alpha >= alpha_c
        fprintf("No change in current Public Health Measure \n");
    end
elseif Y > 1
    if alpha < alpha_c
        fprintf("Disease expansion state, Increase Public Health Measure \n");
    elseif alpha >= alpha_c
        fprintf("No change in current Public Health Measure \n");
    end
elseif Y < 1
    if alpha < alpha_c
        fprintf("Disease controlled, Decrease Public Health Measure \n");
    elseif alpha >= alpha_c
        fprintf("No change in current Public Health Measure \n");
    end

end



