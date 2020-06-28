function Rnorm = SO3normalize(R)
%input: R 3*3 matrix
%output: Rnorm 3*3 matrix
[u,s,v] = svd(R);
Rnorm = u*v';
end