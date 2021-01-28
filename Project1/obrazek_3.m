%obrazek drugiego wielomianu
clc
grid on
w1 = generujWielomian([0 0 0 0 1])
x = -5:0.01:5
y = w1(x)
w1(5)
plot(x,y,'-')
grid on
grid minor
legend('w_n(x)')