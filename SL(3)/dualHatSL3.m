function x_dual_hat = dualHatSL3(x)

x1 = x(1);
x2 = x(2);
x3 = x(3);

x_dual_hat = [x3, 0 , x2, 0 ,  x1,  0 , 0 , 0;...
    0 , x3, 0 , x1, -x2, -x2, 0 , 0;...
    0 , 0 , 0 , 0 ,  0 ,  x3, x1, x2];