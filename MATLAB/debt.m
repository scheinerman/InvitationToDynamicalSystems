function x = debt(t)
% computes out indebtedness at time t given
% interest rate r = 6%
% initial balance x0 = $1000
% annual payment rate b = $100

r = 0.06;
x0 = -1000;  % negative for a debt
b = 100;     % annual payment rate

x = exp(r*t)*x0 + (b/r)*(exp(r*t)-1);
