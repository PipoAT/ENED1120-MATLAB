% Homework 3.2 Task 1: MATLAB 1
% File: HW_3p2_Task1_pipoat.m
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
% This program can intake the inputs of charge density,
% radial distance, and the external and internal radius to
% calculate the electric flux density
%

pv = input("Enter the charge density (nC/cm^3) =   ");
r = input("Enter the radial distance r(cm) :   ");
a = input("Enter the internal radius a(cm) :   ");
b = input("Enter the external radius b(cm) :   ");

if r > 0 && a >= r
    D = (pv * r) / 2;
elseif a <= r && b > r
    D = (pv * a^2) / (2*r);
elseif b <= r
    D = 0;
end

fprintf("The electric flux density, D, is: %0.1f nC/cm^2 \n",D)
