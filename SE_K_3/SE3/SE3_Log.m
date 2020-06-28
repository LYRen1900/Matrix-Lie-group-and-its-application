function [xi] = SE3_Log(chi)
%SE3_LOG logarithm
%
% Syntax:  [xi] = se3_log(chi)
%
% Inputs:
%    chi - matrix 4*4 
%
% Outputs:
%    xi - vector  6*1   the former 3*1 represents the rotation; the later
%    3*1 represents the translation

phi = SO3_Log(chi(1:3, 1:3));
xi = [phi;
     SO3_inv_left_jacobian(phi)*chi(1:3, 4)];
end