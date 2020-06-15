function ctn = CubicTaxicabNum(N)
% CUBICTAXICABNUM returns the smallest cubic taxicab number greater than
% or equal to N

ctn = N;
while (~isCubicTaxiCab(ctn)) % Until we find a cubic taxicab number.
    ctn = ctn + 1;
end
end