function FiringTimes(angle)
% FiringTimes Find the firing times for firing angle to hit target by
% avoiding the interceptors

% Get the height and duration of particle when it reaches interceptors
[height, duration] = GetHeightAndTravelTimeAt(12000, angle);

t = floor(duration);
start = 0;
if ~IsWallAt(t, height)
    t = t+1;
    while (~IsWallAt(t, height))
        t=t+1;
    end
    last = t - 1 - duration;
else
    while(IsWallAt(t, height))
        t = t+1;
    end
    start = t - duration;
    last = t + 10 - duration;
end

start = round(start, 2);
last = round(last, 2);
disp("Firing Time intervals: [" + start + ", " + last + "]");
disp("[" + last + "+10K1, " + last + "+10K2]");
disp("where K1 = (2n+1) and K2 = (2n+2) for n=0,1,2,3 ...");
end