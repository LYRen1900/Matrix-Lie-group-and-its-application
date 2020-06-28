function v = SE3_vee(xi)
% the map from the Lie algebra se(3) to the vector 
v = [SO3_vee(xi(1:3,1:3)); xi(1:3,4)];
