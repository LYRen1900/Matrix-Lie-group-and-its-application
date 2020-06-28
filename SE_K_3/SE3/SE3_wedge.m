function xi = SE3_wedge(v)
% the map from the vector to the Lie algebra se(3)
xi = [SO3_wedge(v(1:3)), v(4:6);
      zeros(1,4)];
