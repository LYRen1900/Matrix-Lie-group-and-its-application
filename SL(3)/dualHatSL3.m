function x_dual_hat = dualHatSL3(x)
% a_hat_{3*3} * x_{3*1}= x_dual_hat_{3*8} *a_{8*1}   a_hat\in Lie algebar sl(3)
x1 = x(1);
x2 = x(2);
x3 = x(3);

x_dual_hat = [x3, 0 , x2, 0 ,  x1,  0 , 0 , 0;...
    0 , x3, 0 , x1, -x2, -x2, 0 , 0;...
    0 , 0 , 0 , 0 ,  0 ,  x3, x1, x2];