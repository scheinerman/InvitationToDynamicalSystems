function [k,x] = iterate(fnc, x0, steps)
%
% [k,x] = iterate(fnc, x0, steps)
% where...
%	fnc is the 'name' of a function
%	x0 is the starting value of x (should be a col vec)
%	steps is the number of steps
% returns...
%	k = [0:steps]
%	x a matrix with steps+1 column corresponding to x(0)...

k = [0:steps];

[r,c] = size(x0);
if (c>1) 
	disp('The initial vector should be a column vector');
	return;
end;

x = zeros(r,steps+1);
x(:,1) = x0;

for i=1:steps
	x(:,i+1) = feval(fnc,x(:,i));
end;
