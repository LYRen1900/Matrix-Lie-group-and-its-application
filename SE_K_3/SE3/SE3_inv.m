function [chi_inv] = SE3_inv(chi)
%SE3_INV Inverse
%
% Syntax:  [chi_inv] = se3_inv(chi)
%
% Inputs:
%    chi - matrix 4*4
%
% Outputs:
%    chi_inv - matrix 4*4
%chi_inv = eye(size(chi));
%R = chi(1:3,1:3);
%iR = R';
%chi_inv(1:3,1:3) = iR;
%chi_inv(1:3,4:end) = -iR*chi(1:3,4:end);
chi_inv = [chi(1:3, 1:3)' -chi(1:3, 1:3)'*chi(1:3, 4);
    0 0 0 1];
end