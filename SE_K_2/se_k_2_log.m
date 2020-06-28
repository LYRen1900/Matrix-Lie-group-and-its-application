function [xi] = se_k_2_log(chi)
%SE_K_2_LOG logarithm
%
% Syntax:  [xi] = se_k_2_log(chi)
%
% Inputs:
%    chi - matrix (k+2)*(k+2)
%
% Outputs:
%    xi - vector   2(k+1)*1

phi = so2_log(chi(1:2, 1:2));
Xi = so2_inv_left_jacobian(phi)*chi(1:2, 3:end);
% added by Yarong Luo
[m,n]=size(Xi);    %m=2,n=k
Xi=reshape(Xi,m*n,1);
xi = [phi;
     Xi(:)];
end