function n = VecSL3(N)
% the map from the Lie algebra sl(n) to the vector 
% input N 3*3 matrix   the trace of the matrix N is zero trace(N)=0
% output n 8*1 vector
n = [N(1,3); N(2,3); N(1,2); N(2,1); N(1,1); N(3,3); N(3,1); N(3,2)];