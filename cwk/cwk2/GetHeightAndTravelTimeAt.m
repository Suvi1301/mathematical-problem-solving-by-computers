function [height, duration] = GetHeightAndTravelTimeAt(distance, angle)
% GetHeightAt Find the height of particle at horizontal distance for given 
% firing angle and the time it takes to reach this height

% Solve the ODE numerically
[t, xa] = Ode(angle);

% Interpolate time when ball reaches interceptors
duration = interp1(xa(:,1),t, distance);

% Interpolate height when ball reaches interceptors
height = interp1(xa(:,1), xa(:,3), 12000);

end