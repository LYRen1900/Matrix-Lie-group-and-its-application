function [J] = SO3_left_jacobian(phi)
%SO3_LEFT_JACOBIAN Jacobian
%
% Syntax:  [J] = SO3_left_jacobian(phi)
% left Jacobian matrix of the SO(3) group
% Inputs:
%    phi - vector 3*1
%
% Outputs:
%    J - Jacobian 3*3

TOL = 1e-9;

angle = norm(phi);
if angle < TOL
    % Near |phi|==0, use first order Taylor expansion
    %J = eye(3) - 1/2 * so3_wedge(phi);%this seems wrong
    J = eye(3) + 1/2 * SO3_wedge(phi);  
else
    axis = phi / angle;
    s = sin(angle);
    c = cos(angle);
    J = (s / angle) * eye(3) + (1 - s / angle) * (axis*axis') + ...
            ((1 - c) / angle) * SO3_wedge(axis);
end
end