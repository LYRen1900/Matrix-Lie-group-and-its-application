function [ x_dual_hat ] = SO3dual_wedge( x )
% Definition: w_hat*x = x_dual_hat*w
% w_hat*x=-x_hat*w  ----> x_dual_hat=-x_hat
% input: x -- vector 3*1
% output: x_dual_hat -- matrix 3*3 
x_dual_hat = - SO3_wedge(x);
end

