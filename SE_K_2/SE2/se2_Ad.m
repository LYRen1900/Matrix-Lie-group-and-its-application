function [Ad] = se2_Ad(chi)
%SE2_EXP Adjoint matrix
%
% Syntax: [Ad] = se2_Ad(chi)
%
% Inputs:
%    chi - matrix 3*3
%
% Outputs:
%    Ad - matrix 3*3

Rot = chi(1:2, 1:2);
Jp = [chi(2, 3);
      -chi(1, 3)];
Ad = [Jp, Rot;
      1 0 0];
end

