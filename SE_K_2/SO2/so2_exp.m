function [Rot] = so2_exp(phi)
%SO2_EXP exponential
%
% Syntax:  [Rot] = so2_exp(phi)
%
% Inputs:
%    phi - scalar 1*1
%
% Outputs:
%    Rot - rotation matrix 2*2

Rot = [cos(phi), -sin(phi);
    sin(phi), cos(phi)];
end

