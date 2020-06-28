function [Phi] = so2_wedge(phi)
%SO2_WEDGE Wedge operator
%
% Syntax:  [Phi] = so2_wedge(phi)
%
% Inputs:
%    phi - scalar 1*1

%
% Outputs:
%    Phi - matrix 2*2

Phi = [0 -phi;
      phi 0];
end

