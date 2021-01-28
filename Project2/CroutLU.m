function [L, U] = CroutLU(A)

% function returns two matrices L and U created with Crout Decomposition
% Arguments:
% A - n x n matrix
     
% firstly we check whether we are able to decompose our matrix into LU
% format
n = length(A);
message = "It is not possible to create LU decomposition";

for i=1:n
    leading_submatrix = A(1:i,1:i);
    if (det(leading_submatrix) == 0)
        error(message)
    end
end
    
[R, C] = size(A);
for i = 1:R
    L(i, 1) = A(i, 1);
    U(i, i) = 1;
end
for j = 2:R
    U(1, j) = A(1, j) / L(1, 1);
end
for i = 2:R
    for j = 2:i
        L(i, j) = A(i, j) - L(i, 1:j - 1) * U(1:j - 1, j);
    end
    for j = i + 1:R
        U(i, j) = (A(i, j) - L(i, 1:i - 1) * U(1:i - 1, j)) / L(i, i);
    end
end
end