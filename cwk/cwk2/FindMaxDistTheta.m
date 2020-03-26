function FindMaxDistTheta
% FindMaxDistTheta find the maximum horizontal distance & the launch angle.

best_dist = 0;
best_theta = 0;

for i = 0:0.1:90
    max_dist = Displacement(deg2rad(i));
    if max_dist > best_dist
        best_theta = i;
        best_dist = max_dist;
    end
end

disp("Max horizontal distance = " + round(best_dist,2) + " metres (2dp)");
disp("Launch angle = " + best_theta + " degrees | " ...
     + round(deg2rad(best_theta),3) + " radians (3dp)");
end