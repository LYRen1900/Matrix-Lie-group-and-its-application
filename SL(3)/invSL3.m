function [ Hinv,errorflag ] = invSL3( H )
errorflag = 0;
Hinv = inv(H);

[msgstr, msgid] = lastwarn;

if(~isempty(msgid))

    errorflag = 1;
    lastwarn('');
    
    return;
end

end

