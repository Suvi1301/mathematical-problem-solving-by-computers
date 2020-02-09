function [p, q] = RatAppCat(N)
% RATAPPCAT The best rational approximation p/q of the Catalan 's constant,
% among all pairs of (p,q) such that p+q<=N

G = double(catalan);
min_diff = 1;

for i = 2:N % q can't be 1 so start from 2
    rvp = round(G*i); % rounded value of 'perfect' decimal p
    if (rvp + i > N)
        return; % if we find a p+q > N then we are done
    end
    diff = abs(rvp/i - G);
    if (diff < min_diff)
        min_diff = diff;
        p = rvp; q = i;
    end
end
end