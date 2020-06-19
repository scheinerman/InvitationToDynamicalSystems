function yp = cycexample(t,y)
%
u = y(1);
v = y(2);
a = -0.1;

yp1 = a*u + v - u*u*u;
yp2 = -u;
yp = [yp1;yp2];
