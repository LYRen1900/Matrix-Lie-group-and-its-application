function [ output ] = RightJacobian_SE3( xi )
output = LeftJacobian_SE3(-xi);
end

