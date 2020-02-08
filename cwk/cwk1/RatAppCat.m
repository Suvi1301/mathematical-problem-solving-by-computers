function [p, q] = RatAppCat(N)
% RATAPPCAT The best rational approximation p/q of the Catalan 's constant,
% among all pairs of (p,q) such that p+q<=N

G = double(catalan);
min_diff = 1;
for j = 2:N
    for i = floor(G*j):j-1
        diff = abs(i/j - G);
        if (diff < min_diff)
            min_diff = diff;
            p = i; q = j;
        end
    end
end
end

