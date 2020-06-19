function xx=nonlinex(x)
% xx = nonlinex(x)
% this is an example from the book (end of sect 3.2)

xx=x; % so xx inherits x's size and shape

xx(1) = (x(1)+x(2))/2;
xx(2) = 4 * cos(x(1));
