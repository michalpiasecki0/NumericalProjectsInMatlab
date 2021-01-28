w1 = generujWielomian([1 2 3]);
figure;
X = 1:1:1000
for i = 5:1000
    [result error] = calka_trapezowa(w1,0,5,i);
    X(i) = error;
end   
N = 1:1:1000;
length(X)
length(N)
figure;
set(gca,'yticklabel',[],'xticklabel',[]);
grid on
semilogy(N,X)
title("Maksymlana wartość błędu w zależności od ilości węzłów")
xlabel("ilość węzłów")
ylabel("wartość błędu")

