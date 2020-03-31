function TimeDelay(angles)
% FiringTimes Find the firing times for firing angle to hit target by
% avoiding the interceptors

for i = 1:length(angles)
% Get the height and duration of particle when it reaches interceptors
[height, duration] = GetHeightAndDurationAt12K(angles(i));

% Find one time delay
time_delay = mod((height/100) - duration - 10, 20);
fprintf("Time delay for angle %f = %f\n", angles(i), time_delay);
end
end