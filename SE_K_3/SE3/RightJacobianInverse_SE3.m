function [ output ] = RightJacobianInverse_SE3( xi )
output = inv(RightJacobian_SE3(xi));
end

