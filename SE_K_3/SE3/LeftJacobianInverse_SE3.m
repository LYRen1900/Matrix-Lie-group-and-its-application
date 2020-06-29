function [ output ] = LeftJacobianInverse_SE3( xi )
%RIGHTJACOBIAN definition can be found in Barfoot(state estimation for
%robotics,2017) 
output = inv(LeftJacobian_SE3(xi));
end

