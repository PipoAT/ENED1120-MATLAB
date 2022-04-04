% Week 6 Task 1 MATLAB Homework
% File: HW_6p2_pipoat.m
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
% This program can take a matrix and calcuate 
% sums based on given requirements

clear all;
oddSum = 0;
diagsum = 0;
aboveandright = 0;
A = [-4,2,-7,6,8;4,-5,8,-1,0; 0, -4, 3, 1, 10; -8,7,-10,5,-2];

[nrow,ncol] = size(A);


for n = 1:1:nrow
  for c = 1:2:ncol
          oddSum1 = A(n,c) + oddSum;
          oddSum = oddSum1;
  end
end

n = 1;
for c = 1:1:ncol
    while n <= nrow && n == c
       diagsum1 = A(n,c) + diagsum;
       diagsum = diagsum1;
       n = n + 1;
    end
end

for n = 1:1:nrow
    for c = 2:1:ncol
        if c > n
            aboveandright1 = A(n,c) + aboveandright;
            aboveandright = aboveandright1;
        end
    end
end





fprintf("The sum of the odd columns is %i \n",oddSum)
fprintf("The sum of the diagonal is %i \n",diagsum)
fprintf("The sum of the right and above of the diagonal is %i \n",aboveandright)


