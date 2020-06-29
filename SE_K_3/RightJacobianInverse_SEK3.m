function [ output ] = RightJacobianInverse_SEK3( xi )
output = inv(RightJacobian_SEK3(xi));
end

