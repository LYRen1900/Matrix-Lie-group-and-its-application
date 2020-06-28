function adw = SO3_adj(w)
%input: w--vector3*1
%output: adw-- matrix 3*3
%the adjoint of the Lie algebra so(3) is the so(3)----the skew matrix
adw = SO3_wedge(w);  %the skew matrix of the vector