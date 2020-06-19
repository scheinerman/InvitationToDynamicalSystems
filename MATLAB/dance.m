% Dancing on a triangle

% set up the graphics screen
clg;               
axis('square');
axis([0 1 0 1]);
hold on;

% we start "point" at the origin
point = [0,0];

% let A,B,C be three corners of a triangle
A = [0,0];
B = [1,0];
C = [0.5,1];

% repeat the following forever
while (1)         
    % plot the point on the screen
    plot(point(1),point(2),'.');

    % pick a random number among 1, 2 and 3
    picker = fix(3*rand(1))+1;

    % jump half way to A, B or C depending on "picker"
    if picker==1, point = (point+A)/2; end;
    if picker==2, point = (point+B)/2; end;
    if picker==3, point = (point+C)/2; end;
end;
