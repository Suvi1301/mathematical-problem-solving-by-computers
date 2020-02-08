function y=quadroot(a)
%QUADROOT    Roots of the quadratic function x^2-a*x+1=0
%   quadroot(a) returns the two roots of the quadratic function x^2-a*x+1=0
%   such that both roots are accurate even if the absolute value of a is large
sgn = a / abs(a);
y = [2/(a + sgn*sqrt(a^2 - 4)), (a + sgn*sqrt(a^2 - 4)/2)];
end

