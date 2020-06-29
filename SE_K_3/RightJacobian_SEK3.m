function [ output ] = RightJacobian_SEK3( xi )
output = LeftJacobian_SEK3(-xi);
end

