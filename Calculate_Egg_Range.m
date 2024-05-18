% Eralp Çelebi <eralp.celebi.personal@gmail.com>

clc;
clear all;

Mass = [59 57 59 58 60 55 56 58 55 54 ...
        57 57 58 54 59 58 55 55 60 56 ...
        52 58 50 58 56 56 58 58 58 57];

Mass = Mass.';

N = length(Mass);

Avg = mean(Mass);
Std = std(Mass);

function [Lower, Upper] = Find_Egg_Range(X, S, N, T)
    Z = norminv(T);
    Sx = S ./ sqrt(N);
    
    Lower = X - Z .* Sx;
    Upper = X + Z .* Sx;
end

[Lower, Upper] = Find_Egg_Range(Avg, Std, N, 0.99);