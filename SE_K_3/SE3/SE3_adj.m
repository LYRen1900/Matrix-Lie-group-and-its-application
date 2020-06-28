function adw = SE3_adj(g)
%input: g--vector6*1
%output: adw-- matrix 6*6
phi = g(1:3);
x = g(4:6);
R=SO3_wedge(phi);
adw = [R, zeros(3);
     SO3_wedge(x)*R, R];