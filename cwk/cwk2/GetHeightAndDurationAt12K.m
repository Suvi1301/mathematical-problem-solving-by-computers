function [height, duration] = GetHeightAndDurationAt12K(theta)
% GetHeightAndDurationAt12K Find the height of cannonball at horizontal
% distance=12000 for given firing angle and the time it takes to reach this height.

% Solve the ODE numerically till the horizontal distance = 12000
[t, x] = Projectile(theta, @InterceptorEvent);

duration = t(end);
height = x(end, 3);
end