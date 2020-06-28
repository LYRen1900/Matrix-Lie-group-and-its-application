function [Phi] = SO3_wedge(phi)
%SO3_WEDGE Wedge operator
%
% Syntax:  [Phi] = SO3_wedge(phi)
% the map from the vector to the Lie algebra
% Inputs:
%    phi - vector 3*1
%
% Outputs:
%    Phi - matrix 3*3  the output will be a skew matrix

Phi = [0, -phi(3), phi(2);
       phi(3), 0, -phi(1);
       -phi(2), phi(1), 0];
end
