%obrazek trzeciego wielomianu
clc
grid on
w1 = generujWielomian([0.1 0.01 0.001 0.0001])
x = -3:0.01:3
y = w1(x)
w1(5)
plot(x,y,'-')
grid on
grid minor
legend('w_n(x)')
