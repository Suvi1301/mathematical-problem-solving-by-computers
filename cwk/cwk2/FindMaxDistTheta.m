function FindMaxDistTheta
% FindMaxDistTheta find the maximum horizontal distance & the launch angle.

[angle, dist] = fminbnd(@Distance, 0, pi/2);

fprintf("Max horizontal distance: %s metres\n", num2str(-dist));
fprintf("Launch angle: %.5f radians (5dp) | %.2f degrees (2dp)\n", angle, rad2deg(angle));
end