function FindMaxDistTheta
% FindMaxDistTheta find the maximum horizontal distance & the launch angle.

[angle, dist] = fminbnd(@Distance, 0, pi/2);

disp("Max horizontal distance: " + -dist + " metres");
disp("Launch angle: " + rad2deg(angle) + " degrees | " + angle + " radians");
end