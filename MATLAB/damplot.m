function damplot(mu,tlast)
% plots x and v as t goes from 0 to tlast
t = [0:.05:tlast];
[r,n] = size(t);
xvarray = zeros(2,n);
for j=1:n, xvarray(:,j) = damp(mu,t(j)); end
plot(t,xvarray(1,:),t,xvarray(2,:),':');
