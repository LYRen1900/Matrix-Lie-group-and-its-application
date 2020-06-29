function H = expSL3(h)
% the exponenetial map from the vector to the Lie group
h_hat = HatSL3(h);   %matrix exponential  the map from the vector to the Lie algebra
H = expm(h_hat);  % the map from the Lie algebra to the Lie group