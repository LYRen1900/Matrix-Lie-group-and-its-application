function [ Ad ] = ad_SEK3( X )
%ADJOINT_SE3 Computes the matrix representation of the Adjoint of SEK(3)
N = size(X,1)-3;
Ad = X(1:3,1:3);
for i=1:N
    Ad = blkdiag(Ad,X(1:3,1:3));
    Ad(1:3,end-2:end) = SO3_wedge(X(1:3,3+i));
end
end