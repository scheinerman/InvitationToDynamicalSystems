function x = bin2real(binvec)
%
% bin2real converts a row vector of 0's and 1's  
% to a real in [0,1)
%
n = length(binvec);
pows = (2.^(-[1:n]))';
x = binvec * pows;
