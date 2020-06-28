function [phi] = so2_log(Rot)
%SO2_LOG logarithm
%
% Syntax:  [phi] = so2_log(Rot)
%
% Inputs:
%    Rot - rotation matrix 2*2
%
% Outputs:
%    phi - scalar 1*1

phi = atan2(Rot(2, 1), Rot(1, 1));
end
