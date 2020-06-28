function [phi] = SO3_vee(Phi)
%SO3_VEE vee operator
%
% Syntax:  [phi] = SO3_vee(Phi)
% the map from the Lie algebra to the vector
% Inputs:
%    Phi - matrix 3*3  the matrix must be a skew matrix
% Outputs:
%    phi - vector 3*1

phi = [Phi(3, 2);
       Phi(1, 3);
       Phi(2, 1)];
end

