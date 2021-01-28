function [result, error] = calkaTrapezowa(f,a,b,n)
h = (b-a)/n;
x = a:h:b;
result = 0;
for i = 1:(n-1)
    result = result + (f(x(i)) + f(x(i + 1))) * h/2;
end
error = max(abs(diff(f(linspace(a,b,n)),2)/h))*h^2*(b-a)/12;
end



