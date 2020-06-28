function [Rinv,errorFlag] = SO3_inv(R)
% the inverse of the 3D rotation matrix is its permutation
% input: R -- 3*3 matrix
% output: Rinv -- 3*3 matrix
errorFlag = 0;
Rinv = R';
