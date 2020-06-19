function out = real2bin(x,bits)
%
% converts real x \in [0,1) to binary
%
out = zeros(1,bits);
for k=1:bits
	if (x >= 1/2),  out(k) = 1; end;
	x = rem(2*x,1);
end;
