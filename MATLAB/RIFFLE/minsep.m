function ms = minsep(list)
% computes the minimum difference between succesive
% elements in list 
n = length(list);
delta = list(2:n) - list(1:n-1);
ms = min(abs(delta));
