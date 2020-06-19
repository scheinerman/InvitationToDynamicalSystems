function xx = hump(x)

% xx = hump(x)
% this is an example from the book (end of sect 4.2)

xx=x; % so xx inherits x's size and shape

xx = 1- x.^2;
