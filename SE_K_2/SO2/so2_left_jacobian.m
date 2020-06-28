function [J] = so2_left_jacobian(phi)
%SO2_LEFT_JACOBIAN Jacobian
%
% Syntax:  [J] = so2_left_jacobian(phi)
%
% Inputs:
%    phi - scalar 1*1
%
% Outputs:
%    J - Jacobian 2*2

TOL = 1e-9;

if norm(phi) < TOL
    % Near |phi|==0, use first order Taylor expansion
    J = eye(2) + 1/2 * so2_wedge(phi);
else
    J = sin(phi)/phi * eye(2) + (1-cos(phi))/phi * so2_wedge(1);
end
end