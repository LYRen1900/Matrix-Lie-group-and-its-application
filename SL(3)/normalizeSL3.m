function Hnorm = normalizeSL3(H)

detH = det(H);

Hnorm = H./(detH^(1/3));
end