% Optimisation Function

close all;
clear all;
pkg load optim;

x0 = [30, 30];
Lb = [-30; -30];
Ub = [30; 30];

options = optimset('Display', 'iter', 'TolX', 1*exp(-6), 'TolFun', 1*exp(-6), 'MaxIter', 100, 'MaxFunEvals', 300);

x = fmincon(@objective, x0, [], [], [], [], Lb, Ub, @constraints, options);

x

f = objective(x)
[ g h ] = constraints(x)

X = -30:0.5:30;
Y = X;
[X1, Y1] = meshgrid(X, Y);
Z = (3*X1-3).^2 + (4*Y1-2).^2 + X1.*Y1;

figure(1); clf; surf(X1, Y1, Z);
figure(2); clf; contour(X1, Y1, Z);
figure(3); clf; contourf(X1, Y1, Z);
figure(4); clf; [c, h] = contour(X, Y, Z, [5 10 10 5 0 12 12 0]);