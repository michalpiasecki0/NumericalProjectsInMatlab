function result = generuj_Czebyszewa_pierwszego(x, n)
% Funkcja generuje wartości wielomianu Czebyszewa pierwszego rodzaju stopnia n dla podanego
% wektora argumentów
% Argumenty:
% x - wektor argumentów dla których liczymy wartość wielomianu
% n - stopień wielomianu Czebyszewa
if n == 0
    result = ones(1,length(x));
elseif n == 1
    result = x;
else
    result = (2 * x).*generuj_Czebyszewa_pierwszego(x,(n - 1)) - generuj_Czebyszewa_pierwszego(x, (n- 2));
end

end

