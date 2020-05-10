function S = sumsquareloss(a,r,p)
% Sum of squares loss function.
% a = [alpha, beta]
S = 0;
for i = 1:length(r)
    % sum the values (P_i - P(r_i))^2
    S = S + (p(i) - 1/(1 + exp(-a(1)*r(i) - a(2))))^2; 
end