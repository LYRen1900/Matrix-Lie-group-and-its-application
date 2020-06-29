function Hnorm = normalizeSL3(H)
% the normalize of the Lie group SL(3)
% input H 3*3 matrix
% output Hnorm 3*3 matrix
detH = det(H);
Hnorm = H./(detH^(1/3));
end