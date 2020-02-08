function ctn = CubicTaxicabNum(N)
% CUBICTAXICABNUM return the smallest cubic taxicab number greater than
% or equal to N

n = N;
while(1)
    i = 1;
    j = floor(nthroot(n, 3));
    comb_count = 0;
    A = 1:j;
    while (i < j)
        cube_sum = (A(i)^3 + A(j)^3);
        if (cube_sum > n)
            j = j - 1;
        elseif (cube_sum < n)
            i = i + 1;
        else
            comb_count = comb_count + 1;
            i = i + 1; j = j - 1;
        end
    end
    if (comb_count == 2)
        ctn = n;
        break;
    end
    n = n + 1;
end
end