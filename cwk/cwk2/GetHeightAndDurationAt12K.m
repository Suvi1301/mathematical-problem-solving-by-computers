function [height, duration] = GetHeightAndTravelTimeAt12K(angle)
% GetHeightAt12K Find the height of particle at horizontal distance = 12000 
% for given firing angle and the time it takes to reach this height

% Solve the ODE numerically till the horizontal distance = dist
[t, x] = Projectile(angle, @Events2);

duration = t(end);
height = x(end, 3);

end