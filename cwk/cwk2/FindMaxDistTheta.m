function FindMaxDistTheta
% FindMaxDistTheta find the maximum horizontal distance & the launch angle.

[theta, dist] = fminbnd(@(theta) -Distance(theta), 0, pi/2);

fprintf('Max horizontal distance: %s metres\n', num2str(-dist));
fprintf('Launch angle: %.5f radians (5dp) | %.2f degrees (2dp)\n', theta, rad2deg(theta));
end