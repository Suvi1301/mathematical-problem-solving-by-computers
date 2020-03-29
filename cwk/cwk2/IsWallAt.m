function x = IsWallAt(t, h, max_height)
% IsWallAt determine whether there is intercepter at height h at time t.

t = t - 20*(floor(t/20));

y = 100*t;

for i = 0:2000:max_height
    if h >= i-1000+y && h <= i+y
        disp(i);
        x = true;
        return;
end
x = false;

end