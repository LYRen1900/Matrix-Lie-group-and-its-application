function [chi] = SE3_Exp(xi)
%SE3_EXP exponential
%
% Syntax:  [chi] = se3_exp(xi)
%
% Inputs:
%    phi - vector 6*1
%
% Outputs:
%    chi - matrix 4*4
theta = norm(xi(1:3));
if(theta == 0)
    chi = [[eye(3),xi(4:6)];[zeros(1,3),1]] ;
else
    Xi = [[SO3_wedge(xi(1:3)),xi(4:6)];zeros(1,4)] ;  %  SO(3) Lie algebra
    chi = eye(4) + Xi + 1/theta^2*(1-cos(theta))*Xi^2 + 1/theta^3*(theta-sin(theta))*Xi^3;  %£¨7.44£©
end
%chi = [SO3_Exp(xi(1:3)), SO3_left_jacobian(xi(1:3))*xi(4:6);zeros(1, 3) 1]; %£¨7.33£©
end

