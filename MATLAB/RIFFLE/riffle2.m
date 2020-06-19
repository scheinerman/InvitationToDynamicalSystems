%
% does a riffle shuffle on A - K, with lots of feedback
%

bitdepth = 12;
inlist = [1:13];

cn = 'A23456789TJQK';

s = 0;

while(s<.009)
	n = length(inlist);
	rnd = sort(rand(1,n));
	y = rem( 2 * rnd, 1);
	[yy, idx] = sort(y);
	outlist = inlist(idx);

	s1 = minsep(rnd);
	s2 = minsep(yy);
	s = min([s1 s2]);
end;

sep1 = [s, 720*s1]
sep2 = [s,720*s2]


for k=1:n
	disp( sprintf( ...
	'%s & %6.4f & 0.%s & %6.4f & 0.%s \\\\', ...
		cn(inlist(k)), ...
		rnd(k),...
		int2str(real2bin(rnd(k),bitdepth)), ...
		y(k),...
		int2str(real2bin(  y(k),bitdepth-1)) ...
	));
end;

disp('  ');

for k=1:n
	disp( sprintf( ...
	'%6.4f & 0.%s & %s \\\\',...
		yy(k), ...
		int2str(real2bin(yy(k),bitdepth-1)), ...
		cn(outlist(k)) ...
	));
end;
