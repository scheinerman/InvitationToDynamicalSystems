a = [ 0 1; -1 0]

[x,y] = meshdom(-3:.4:3, -3:.4:3);
[r,c] = size(x);
m = zeros(x);

for j=1:r, for k=1:c,
    v = a * [x(j,k); y(j,k)];
    m(j,k) = v(1) + i*v(2);
end; end;

m = m ./ (2*abs(m));
quiver(m);
