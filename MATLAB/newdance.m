% newdance.m
%
% Dancing on a triangle
%


% set up the graphics screen
axis('square');
axis([0 1 0 1]);
hold on;

npoints = 500;

corners = [ 0 1 .5; 0 0 1];

points = zeros(2,npoints);
choice = fix(3*rand(1,npoints)+1);

for k=2:npoints
	points(:,k) = (points(:,k-1) + corners(:,choice(k-1)))/2;
end;

plot(points(1,:),points(2,:),'.')
