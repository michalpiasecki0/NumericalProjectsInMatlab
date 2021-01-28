%przykłady uzycia
w1 = generujWielomian([1 2 3]);
[r1, e1] = calka_trapezowa(w1,0,5,2)
[r2, e2] = calka_trapezowa(w1,0,5,7)
[r3, e3] = calka_trapezowa(w1,0,5,100)
[r4, e4] = calka_trapezowa(w1,0,5, 1000)
syms x
expr = w1(x)
Integral_1 = int(expr,0,5)
Integral_1_2 = int(expr,-1,1)
X = [0 0 0 0 1]
w2 = generujWielomian(X)
expr2 = w2(x)
[r2_1, e2_1] = calka_trapezowa(w2,0,5,1000)
Integral2 = int(expr2,0,5)
[r2_2, e2_2] = calka_trapezowa(w2,-1,1,100)

w3 = generujWielomian([0.1 0.01 0.001 0.0001])
expr3 = w3(x)
[r3_1, e3_1] = calka_trapezowa(w3,-3,3,5)
[r3_2, e3_2] = calka_trapezowa(w3,-3,3,20)
[r3_3, e3_3] = calka_trapezowa(w3,-3,3,100)
Integral3 = int(expr3,-3,3)
w4 = generujWielomian([0.1 0.01 0.001 0.0001 0.00001 0.000001 0.0000001])
expr4 = w4(x)
tic
[r4_1, e4_1] = calka_trapezowa(w4,-5,5,10)
toc
tic 
[r4_2, e4_2] = calka_trapezowa(w4,-5,5,100)
toc
tic
[r4_3, e4_3] = calka_trapezowa(w4,-5,5,400)
toc





