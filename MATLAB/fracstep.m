function mout = fracstep(m,ifsdata)
%
% mout = fracstep(m,ifsdata)
% performs one step of the IFS in ifsdata on the
% image in m. Answer written to mout
% Assumed that m and mout are square.
% Assume that ifsdata is a 6 by k matrix


% get the size of the matrix
[r,c] = size(m);
if (r ~= c) 
   disp('Input matrix is not square. I can not deal with it.');
   return;
end;
n = r;

% check the ifsdata matrix, r is the number of rows
[r,c] = size(ifsdata);
if (c~=6) 
   disp('IFS data matrix should have 6 columns');
   return;
end;


mout = zeros(m);   % clear output matrix
for k = 1:r        % step for each row of the IFS data
    A = [ifsdata(k,1), ifsdata(k,2); ifsdata(k,3), ifsdata(k,4)];
    B = [ifsdata(k,5); ifsdata(k,6)];
    for i=1:n, for j=1:n, if m(i,j)  % step through m
        vec = [i-1;j-1] ./ (n-1);  % convert to real data
        newvec = A * vec + B; % compute the affine trans
        iijj = 1+fix(newvec .* (n-1));
        ii=iijj(1); jj=iijj(2);
        if ((1 <= ii) & (ii <= n) & (1 <= jj) & (jj <= n))
           mout(ii,jj)=1;
        end;
    end;end;end;
end;

       
