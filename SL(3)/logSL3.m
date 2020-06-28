function [m,errorflag] = logSL3(M)

errorflag = 0;

try
    m_hat = logm(M);
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

m = VecSL3(m_hat);
