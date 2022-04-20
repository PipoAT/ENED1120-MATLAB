% Week 13 Task 1 MATLAB Homework
% File: HW_13p1_pipoat.m
% Date: 15 April 2022
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
% This program can create an 2D-array
% that is 5 col and 20 rows nad calculates the efficiencies.

sa = [5000 40; 5000 30; 5000 20; 10000 10; 10000 40; 10000 30; 10000 20; 10000 10;
    20000 40; 20000 30; 20000 20; 20000 10; 50000 40; 50000 30; 50000 20; 50000 10;
    100000 40; 100000 30; 100000 20; 100000 10];

arraySize = size(sa);
numRows = arraySize(1);
format shortE
for rowIndex = 1:numRows
    Household = sa(rowIndex,1);
    eff = sa(rowIndex,2);

    if eff == 40
        Cost = 290;
    elseif eff == 30
        Cost = 260;
    elseif eff == 20
        Cost = 200;
    else
        Cost = 150;
    end
    
    a = 13000 * 1000 * Household / 365;
    b = 1370 * (eff/100);

    sc = ((a/b) / 1.0e+09);

    sa(rowIndex,3) = (1.0e+05 *sc);
    sa(rowIndex,4) = (1.0e+05 *sc) / 1.4;
    sa(rowIndex, 5) = ((1.0e+05 * sc) / 1.4) * Cost;
end



