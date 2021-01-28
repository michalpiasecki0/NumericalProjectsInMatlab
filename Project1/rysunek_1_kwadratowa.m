% pierwszy rysunek funkcja kwadratowa + trapezy
x = -10:0.01:10;
z = linspace(-10,10,8)
kwadratowa = @(x) x.^2;
%for i = 1:9
    %X = [x(i) x(i + 1)];
    %Y = [y(i) y(i + 1)];
   % area(X,Y,'r')
%end
figure;
grid on
axis([0 10 -10 110])
plot(x,0,'y')
hold on

%area([z],[kwadratowa(z)])
plot(x,kwadratowa(x),'r','LineWidth',2)

for i = 1:8
    plot([z(i) z(i)], [0 kwadratowa(z(i))], 'b', 'LineWidth',2)
end
for i = 1:7
    plot([z(i) z(i+1)], [kwadratowa(z(i)) kwadratowa(z(i+1))], 'b','LineWidth', 2)
end
grid on
text(5,60,'y = x^2')
title("Pole funkcji przybliżone za pomocą metody trapezów")


