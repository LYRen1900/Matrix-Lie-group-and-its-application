function H = expSL3(h)

h_hat = HatSL3(h);

H = expm(h_hat);