function [p, q] = RatAppCat(N)
% RATAPPCAT The best rational approximation p/q of the Catalan 's constant,
% among all pairs of (p,q) such that p+q<=N

G = double(catalan);
min_dif = 1;

for qi = 1:N
    rvp = round(G*qi); % rounded value of 'accurate' decimal p*
    if (rvp + qi > N)
        return; % if we find a p+q > N then we are done
    end
    dif = abs(rvp/qi - G);
    if (dif < min_dif)
        min_dif = dif;
        p = rvp; q = qi;
    end
end
end