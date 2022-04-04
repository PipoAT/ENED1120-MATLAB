% Week 5 Task 1 MATLAB Homework
% File: HW_5p2_Task1_pipoat.m
% Date: 17 February 2022
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
% This program can calculate the speed of diffusion for
% Alpha Fe and Gamma Fe for a temperature and plots the diffusivity
% vs inverse temperature.

clear; clc

% Part of Program for Alpha Fe

Do = 0.0062;
Qd = 80000;
R = 8.31;
T = 25:5:1000;
InvT = 1./T;
InvT = sort(InvT);

D = Do*exp(-(Qd ./ (R*(1./InvT))));

% Part of Program for Gamma Fe

Do2 = 0.23;
Qd2 = 148000;

D2 = Do2*exp(-(Qd2 ./ (R*(1./InvT))));

% Plotting


subplot(2,2,1)
plot(InvT,D,'--hb',InvT,D2,'--hr');
xlabel("Inverse Temperature");
ylabel("Speed of Diffusion");
legend('D Alpha Fe: blue, D2 Gamma Fe: red');


subplot(2,2,2)
semilogx(InvT,D,'--hb',InvT,D2,'--hr');
xlabel("Inverse Temperature");
ylabel("Speed of Diffusion");
legend('D Alpha Fe: blue, D2 Gamma Fe: red');

subplot(2,2,3)
semilogy(InvT,D,'--hb',InvT,D2,'--hr');
xlabel("Inverse Temperature");
ylabel("Speed of Diffusion");
title('HW 5.2');
legend('D Alpha Fe: blue, D2 Gamma Fe: red');

subplot(2,2,4)
loglog(InvT,D,'--hb',InvT,D2,'--hr');
xlabel("Inverse Temperature");
ylabel("Speed of Diffusion");
legend('D Alpha Fe: blue, D2 Gamma Fe: red');



