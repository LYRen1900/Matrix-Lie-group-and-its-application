function f = SE3_Ad(g)
% Adjoint representation of the Lie group SE(3)
% input: g 4*4 matrix Lie group
% output: f 6*6 matrix 
R = g(1:3,1:3);
x = g(1:3,4);
f = [R, zeros(3);
     SO3_wedge(x)*R, R];
