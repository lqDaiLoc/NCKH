% Y = CELLNORM2( X )
% Computes the overall l2-norm of a number cell X, considered as a vector.
% If X contains subcells, this function calls itself recursively, untill it
% encounters a matrix or a number. The cell X should be a number cell.
%
% Author: Sandeep Palakkal (sandeep.dion@gmail.com)
% Orgn: IIT Madras
% Date: April 20, 2010
% Modified on: Dec 21, 2010

function y = cellnorm2( x )

if iscell( x )
  [m n] = size( x );
  y = 0;
  for jj = 1:n
    for kk = 1:m
      y = sqrt(cellnorm2( x{(kk-1)*m+jj} )^2 + y^2 );
    end
  end
else
  y = sqrt(sum(abs(x(:)).^2));
end
