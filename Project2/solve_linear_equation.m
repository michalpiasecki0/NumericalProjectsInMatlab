function X = solve_linear_equation(L,U, B)
% Function returns solution for linear equation AX = B <-> LUX = B 
% It firstly calculates equation LY = B and then calculates UX = Y
% Forward and backward substition is used, which makes our algorithm
% quicker than normal solve equation method (for example: Gaussian
% Elimination)
% Arguments:
% A - n x n matrix 
% Y - n x m matrix, solution for LY = X
% L - n x n lower triangular matrix created from Crout method on matrix A
% U - upper triangular matrix created from Crout method on matrix A
% B - n x m matrix
[n,m] = size(B);
Y = zeros(n,m);
X = zeros(n,m);
for j=1:m
    Y(1,j) = B(1,j)/L(1,1);
end
for j = 1:m
    for i = 2:n
        Y(i,j) = (B(i,j) - L(i,1:i-1)*Y(1:i-1,j))/L(i,i);
    end
for j = 1:m
    X(n,j) = Y(n,j)/U(n,n);
end
for j = 1:m
    for i = n-1:-1:1
        X(i,j) = (Y(i,j) - U(i,(i+1):n)*X(i+1:n,j))/U(i,i);
    end
end
        
        
end

        
    
end

