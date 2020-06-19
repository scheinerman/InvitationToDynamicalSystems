function ydot = weird(t,y)
% wierd friction f
mu = 0.25;
x = y(1);
v = y(2);
xdot = v;
vdot = -x - mu*v*v*v;
ydot = [ xdot; vdot];
