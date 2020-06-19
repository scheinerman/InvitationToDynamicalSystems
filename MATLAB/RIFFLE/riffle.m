function outlist = riffle(inlist)
%
% does a riffle shuffle on list
%

n = length(inlist);
rnd = sort(rand(1,n));
y = rem( 2 * rnd, 1);
[yy, idx] = sort(y);
outlist = inlist(idx);

