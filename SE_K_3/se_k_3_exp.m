function [chi] = se_k_3_exp(xi)
%SE_K_3_EXP exponential
%
% Syntax:  [chi] = se_k_3_exp(xi)
%
% Inputs:
%    phi - vector  3(k+1)*1
%
% Outputs:
%    chi - matrix  (k+3)*(k+3)

k = length(xi)/3 - 1;
Xi = reshape(xi(4:end), 3, k);
chi = [SO3_Exp(xi(1:3)) SO3_left_jacobian(xi(1:3))*Xi;
    zeros(k, 3) eye(k)];
end

