function showmat(m)
% showmat(m) plots the bitmap in m
% we assume m is square and the range is [0,1]^2
[r,c] = size(m);
if (r~=c)
    disp('I can only deal with square zero/one matrices');
    return;
end;

n = r;

clg;
axis('square')
axis([0 1 0 1]);

for i=1:n, for j=1:n, if m(i,j),
    point = ([i;j]-1) ./ (n-1);
    plot(point,'.');
end;end;end;
    
