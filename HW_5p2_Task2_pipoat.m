% Week 5 Task 2 MATLAB Homework
% File: HW_5p2_Task2_pipoat.m
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

% This program can take a set of constants and inputs and
% calculate displacement for each time interval and graphs
% the determined data

clc; clear all
vel= input('Enter velocity (m/s): ');
p=1.2;
r=.04;
A=pi*r^2;
C=.5;
m=.15;
yi=0;
g=-9.8;
T=.1;
x=1;
D=(p*C*A)/2;



v=zeros(1,1);
y=zeros(1,1);
t=zeros(1,1);

v(1,1) = vel+g*T;
y(1,1) = yi+vel*T+(.5*g*T^2);
row = 2;

while y(row-1,1) > 0
    
    v(row,1) = v(row-1,1) + g*T;
    y(row,1) = y(row-1,1) + v(row-1,1)*T + (.5*g*T^2);
    t(row,1) = t(row-1,1) + .1;
    
    
    
    row = row + 1;
end




af = zeros(1,1);
vf = zeros(1,1);
tf = zeros(1,1);
yf = zeros(1,1);

vf(1,1) = vel;
af(1,1) = g-(D/m)*abs(vel)*vel;
yf(1,1) = yi+vel*T+.5*(af(1,1))*T^2;
row = 2;

while yf(row-1,1) > 0
    
    af(row,1) = g-(D/m)*abs(vf(row-1,1))*vf(row-1,1);
    vf(row,1) = vf(row-1,1)+af(row-1,1)*T;
    yf(row,1) = yf(row-1,1)+vf(row-1,1)*T+(.5*af(row-1,1)*T^2);
    tf(row,1) = tf(row-1,1)+T;
    

    
    
    row = row + 1;
end

plot(t(:,1),y(:,1));
hold on
plot(tf(:,1),yf(:,1));
ylabel('Y pos');
xlabel('time');
grid on

legend('no friction',...
       'friction')