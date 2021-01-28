function [result, error] = calka_trapezowa(f,a,b,n)
%Funkcja zwraca przybliżoną wartość całki z funkcji f na przedziale (a,b)
%metodą trapezów
% Parametry:
% f - funkcja, którą całkujemy
% a - początek przedziału całkowania
% b - koniec przedziału całkowania
% n - ilość węzłów użytych w metodzie trapezów
h = (b-a)/n;
x = a:h:b;
result = 0;
for i = 1:(n-1)
    result = result + (f(x(i)) + f(x(i + 1))) * h/2;
end
error = max(abs(diff(f(linspace(a,b,n)),2)/h))*h^2*(b-a)/12;
end



