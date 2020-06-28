function [xi] = se_k_3_log(chi)
%SE_K_3_LOG logarithm
%
% Syntax:  [xi] = se_k_3_log(chi)
%
% Inputs:
%    chi - matrix   (k+3)*(k+3)
%
% Outputs:
%    phi - vector    3(k+1)*1

phi = SO3_log(chi(1:3, 1:3));
Xi = SO3_inv_left_jacobian(phi)*chi(1:3, 4:end);

[m,n]=size(Xi);    %m=3,n=k
Xi=reshape(Xi,m*n,1);
xi = [phi;
     Xi(:)];
end