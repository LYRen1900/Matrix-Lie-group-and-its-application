function Phiw = SO3_Phi(w)
%input: w 3*1 vector
%output: Phiw 3*3 matrix
normw = norm(w);
% if(normw > pi/2)
%     error('formula not sure')
% end
if(normw > 0)
    adw = SO3_adj(w);
    
    Phiw = eye(3) + (1/(2*normw^2))*(4-normw*sin(normw)-4*cos(normw))*adw+...
        (1/(2*normw^3))*(4*normw-5*sin(normw)+normw*cos(normw))*adw^2+...
        (1/(2*normw^4))*(2-normw*sin(normw)-2*cos(normw))*adw^3+...
        (1/(2*normw^5))*(2*normw-3*sin(normw)+normw*cos(normw))*adw^4;
else
    Phiw = eye(3);
end
end