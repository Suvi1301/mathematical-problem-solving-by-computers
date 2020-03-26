function x = IsWallAt(t, h)
% IsWallAt determine whether there is intercepter at height h at time t.

t = t - 20*(floor(t/20));

y = 100*t;

x = (h >= -1000+y && h <= 0+y) || ...
   (h >= 1000+y && h <= 2000+y) || ...
   (h >= 3000+y && h <= 4000+y) || ...
   (h >= 3000+y && h <= 4000+y) || ...
   (h >= 5000+y && h <= 6000+y);

end