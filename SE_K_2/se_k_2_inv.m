function [chi_inv] = se_k_2_inv(chi)
%SE3_INV Inverse
%
% Syntax:  [chi_inv] = se_k_2_inv(chi)
%
% Inputs:
%    chi - matrix   (2+k)*(2+k)
%
% Outputs:
%    chi_inv - matrix   (2+k)*(2+k)

k = length(chi) - 2;
chi_inv = [chi(1:2, 1:2)' -chi(1:2, 1:2)'*chi(1:2, 3:end);
    zeros(k, 2) eye(k)];
end