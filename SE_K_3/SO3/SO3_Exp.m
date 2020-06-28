function [Rot] = SO3_Exp(phi)
%SO3_EXP exponential
%
% Syntax:  [Rot] = SO3_Exp(phi)
% the map from the vector to the Lie group
% Inputs:
%    phi - vector 3*1
%
% Outputs:
%    Rot - rotation matrix 3*3

TOL = 1e-9;

angle = norm(phi);

if(angle == 0)
    Rot = eye(3);
    return;
end
if angle < TOL
    % Near |phi|==0, use first order Taylor expansion
    Rot = eye(3) + SO3_wedge(phi);
else
    axis = phi / angle;
    Rot = cos(angle) * eye(3) + (1-cos(angle))*(axis*axis') + ...
        sin(angle) * SO3_wedge(axis);
    %Rot = eye(3) + sin(angle)*SO3_wedge(phi)/angle +
    %(1-cos(angle))*SO3_wedge(phi)*SO3_wedge(phi)/(angle^2); %another equivalent calculation
    %equation
end
