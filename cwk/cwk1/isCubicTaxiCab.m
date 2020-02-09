function x = isCubicTaxiCab(X)
% ISCUBICTAXICAB returns a boolean value determining if X is a cubic
% taxicab number or not.

i = 1; j = floor(nthroot(X, 3));
comb_count = 0;
A = 1:j;
x = false;
combo = zeros(2); % Tracks the first two combinations if x is ctn
while (i < j)
    cube_sum = A(i)^3 + A(j)^3;
    if (cube_sum > X)
        j = j - 1;
    elseif (cube_sum < X)
        i = i + 1;
    else
        comb_count = comb_count + 1;
        combo(comb_count,:) = [i j];
        i = i + 1; j = j - 1;
    end
end
if (comb_count == 2)
    x = true;
    disp(combo); % uncomment to see the first 2 sum of cubes.
    return;
end
end