function [chi] = se_k_2_exp(xi)
%SE_K_2_EXP exponential
%
% Syntax:  [chi] = se_k_2_exp(xi)
%
% Inputs:
%    xi - vector  (2k+1)*1
%
% Outputs:
%    chi - matrix   (2+k)*(2+k)

k = (length(xi)-1)/2;
Xi = reshape(xi(2:end), 2, k);
chi = [so2_exp(xi(1)), so2_left_jacobian(xi(1))*Xi;
     zeros(k, 2) eye(k)];
end
