function TimeDelay(angles)
% TimeDelay Find the time delay for firing angles that reaches x=12000 just
% below the interceptor.

for i = 1:length(angles)
    % Get the height and duration of particle when it reaches interceptors
    [height, duration] = GetHeightAndDurationAt12K(angles(i));

    % Find one time delay
    time_delay = mod((height/100) - duration - 10, 20); % as in (2.1)
    fprintf('Time delay for angle %f = %f\n', angles(i), time_delay);
end
end