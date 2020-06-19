function yprime = predpray(t,y)
%
% The preditor/prey model from the text
% y(1) is the number of rabbits
% y(2) is the number of wolves
%
r = y(1);
w = y(2);

a = .2; b=.1; g = .002; h = .001;

rprime = a*r - g*r*w;
wprime = -b*w + h*r*w;

yprime = [rprime;wprime];
