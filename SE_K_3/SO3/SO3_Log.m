function [phi,errorflag] = SO3_Log(Rot)
%SO3_LOG logarithm
%
% Syntax:  [phi] = SO3_Log(Rot)
% the map from the Lie group to the vector
% Inputs:
%    Rot - rotation matrix 3*3
%
% Outputs:
%    phi - vector 3*1

TOL = 1e-9;
cos_angle = 0.5 * trace(Rot) - 0.5;
% Clip cos(angle) to its proper domain to avoid NaNs from rounding errors
cos_angle = min(max(cos_angle, -1), 1);
angle = acos(cos_angle);
if(abs(angle)> pi)
    error('angle absolute value large than pi');
end
if(angle == 0)
    phi = zeros(3,1);
elseif (abs(angle) == pi)
    
    A = (R-eye(3))/2;
    w1 = sqrt(-((A(2,2) + A(3,3) - A(1,1))/2));
    
    
    w2 = sqrt(-((A(1,1) + A(3,3) - A(2,2))/2));
    w3 = sqrt(-((A(1,1) + A(2,2) - A(3,3))/2));
    
    if(w1~=0)
        
        if(A(1,2) < 0)
            w2 = -w2;
        end
        if(A(1,3) < 0)
            w3 = -w3;
        end
        
    elseif(w2~=0)
        
        if(A(2,3) < 0)
            w3 = -w3;
        end
    end
    
    phi = [w1;w2;w3]*angle;
    
% If angle is close to zero, use first-order Taylor expansion
elseif norm(angle) < TOL
    phi = SO3_vee(Rot - eye(3));
else
    % Otherwise take the matrix logarithm and return the rotation vector
    phi = SO3_vee((0.5 * angle / sin(angle)) * (Rot - Rot'));
end
errorflag=0;
end