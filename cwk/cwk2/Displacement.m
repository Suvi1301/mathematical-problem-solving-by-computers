function dist = Displacement(angle, plt)
% Displacement solves coupled ODE system for given launch angle.
% Call with plt=true to plot the horizontal/vertical displacement.

% set plt to false by default
if nargin < 2
    plt = false;
end

% Solve the ODE numerically
[t, xa] = Ode(angle);

% % Interpolate time when vertical displacement=0 for t>0
% end_time = interp1(xa(floor(end/2):end,3),t(floor(end/2):end),0);
twall = interp1(xa(:,1),t, 12000);

% Interpolate horizontal distance when vertical displacement=0 for t>0
dist = interp1(xa(floor(end/2):end,3),xa(floor(end/2):end,1), 0);

y = interp1(xa(:,1), xa(:,3), 12000);
% Plot the projectile trajectory for maximum horizontal distance.
if plt
    plot(xa(:,1), xa(:,3));
    ylim([0,inf]);
end
end
