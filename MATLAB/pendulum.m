function xprime = pendulum(t,x)
%
% This function computes the right side
% of equation (1.15) for use with the ode45
% differential equation solver.

theta = x(1); % the first component of the state vector x is theta
omega = x(2); % and the second component is omega

thetaprime = omega;
omegaprime = -sin(theta);

% the result is placed in xprime with the first
% component of xprime being omega and the second
% component being sin(theta)

xprime = [thetaprime; omegaprime];
