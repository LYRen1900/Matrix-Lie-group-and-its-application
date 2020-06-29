function [m,errorflag] = logSL3(M)
% the logorithm of the matrix M
errorflag = 0;
try
    m_hat = logm(M);   %matrix logorithm, map from the Lie group to the Lie algebra
catch e
    errorflag = 1;
    return;
end
[msgstr, msgid] = lastwarn;
if(~isempty(msgid)) 
    m = [];
    errorflag = 1;
    lastwarn('');
    return;
end
m = VecSL3(m_hat);    % the map from the Lie algebra to the vector
