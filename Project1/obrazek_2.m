% obrazek pierwszego wielomianu
clc
set(gca,'yticklabel',[],'xticklabel',[]);
grid on
w1 = generujWielomian([1 2 3])
x = -5:0.01:5
y = w1(x)
plot(x,y,'-')
grid on
grid minor
legend('w_n(x)')

