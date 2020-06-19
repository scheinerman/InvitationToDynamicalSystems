function xv = damp(mu,t)
% call damp(mu,t)
% where mu is damping and t is time
%
a = [0 1; -1 -mu];
xv = expm(a*t)*[1;0];
