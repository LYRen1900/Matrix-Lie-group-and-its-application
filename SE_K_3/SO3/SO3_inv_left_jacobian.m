function [J] = SO3_inv_left_jacobian(phi)
%SO3_INV_LEFT_JACOBIAN inverse of Jacobian
%
% Syntax:  [J] = SO3_inv_left_jacobian(phi)
% inverse left Jacobian matrix of the SO(3) group
% Inputs:
%    phi - vector 3*1 
%
% Outputs:
%    J - Jacobian 3*3

TOL = 1e-9;

angle = norm(phi);
if angle < TOL
    % Near |phi|==0, use first order Taylor expansion
    J = eye(3) - 1/2 * SO3_wedge(phi);
else
    axis = phi / angle;
    half_angle = angle/2;
    J = half_angle * cot(half_angle) * eye(3) + ...
        (1 - half_angle * cot(half_angle)) * (axis*axis') -...
        half_angle * SO3_wedge(axis);
end
end
