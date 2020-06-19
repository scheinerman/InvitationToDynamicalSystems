function  [x,y] = euler(n)
% uses euler's method to compute y(1) for the diff'eq
% y' = x+y with y(0) = 1
% using n steps

h = 1/n;
x = zeros(1,n+1);
y = x;
y(1) = 1;
for i=1:n
     x(i+1) = x(i) + 1/n;
     y(i+1) = y(i) + (x(i) + y(i))/n;
end;
